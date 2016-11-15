var requestAnimation = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame || window.oRequestAnimationFrame;

function randomInt(min, max) {
    // Rounding does not give random results
    // Tested with testRandom function below (50 000 000) samples
	return Math.floor(random(min, max + 0.99999));
}

function random(min, max) {
	return min + ((max - min) * Math.random());
}

function distanceSqr(point1, point2) {
    return (Math.pow((point1.x - point2.x), 2) + Math.pow((point1.y - point2.y), 2));
}

var width = window.innerWidth;
var height = window.innerHeight;

var canvas = document.querySelector('#main');
var ctx = canvas.getContext('2d');

function SetSize() {
    width = window.innerWidth;
    height = window.innerHeight;

    canvas.width = width;
    canvas.height = height;

    canvas.style.width = width;
    canvas.style.height = height;
}

function Loop() {
    Update();
    Draw();

    requestAnimation(Loop);
}

function Update() {
    // Update functions in here

    for (var p in particles) {
        particles[p].move();
    }

    lines = [];

    for (var i = 0; i < particles.length; i++) {
        for (var j = i; j < particles.length; j++) {
            if (i !== j && distanceSqr(particles[i], particles[j]) < connectionLenghtSqr) {
                lines.push(new Connection(particles[i].x, particles[i].y, particles[j].x, particles[j].y, 1 - (distanceSqr(particles[i], particles[j]) / connectionLenghtSqr) ));
            }
        }
    }
}

function Draw() {
    // Clearing the canvas
    ClearCanvas();

    ctx.globalCompositeOperation = "source-over";
    // Draw functions in here
    // mainParticle.draw();

    for (var l in lines) {
        lines[l].draw();
    }

    for (var p in particles) {
        particles[p].draw();
    }
}

function ClearCanvas(){
    ctx.clearRect(0, 0, width, height);
}

function BlackFadeOver(){
    ctx.globalCompositeOperation = "multiply";
    ctx.fillStyle = "rgba(0,0,0,0.07)";
    ctx.fillRect(0,0,width,height);
}

// globals

var counter = 0;

function Particle(x, y, radius, speed, angle) {
    this.x = x || 0;
    this.y = y || 0;
    this.radius = radius || 0.5;
    this.speed = speed || 0;
    this.angle = angle || 0;

    this.colour = {r: 255, g: 255, b: 255, a: 1};
    this.colourString = "";
    this.vx = 0;
    this.vy = 0;

    this.angleCounter = 0;

    // this.randomAngle();
    this.calcVelocity();
    this.setColourString();
}

Particle.prototype = {
    move: function(){
        this.x += this.vx;
        this.y += this.vy;

        this.contain();
    },
    calcVelocity: function(){
        this.vx = this.speed * Math.cos(this.angle);
        this.vy = this.speed * Math.sin(this.angle);
    },
    contain: function() {
        if (this.x >= width || this.x <= 0) {
            this.vx *= -1;
        }

        if (this.y >= height || this.y <= 0) {
            this.vy *= -1;
        }
    },
    angleUpdate: function(){
        
    },
    resetCounter: function(){
        this.angleCounter = Math.round(random(1,3) * 60);
    },
    setAlpha: function(alpha){
        this.colour.a = alpha;
        this.setColourString();
    },
    setColour: function(r,g,b){
        this.colour.r = r;
        this.colour.g = g;
        this.colour.b = b;

        this.setColourString();
    },
    setHSLColour: function(h, s, l){
        var rgb = hslToRgb(h, s, l);
        this.setColour(rgb.r, rgb.g, rgb.b);
    },
    setColourString: function(){
        this.colourString = "rgba(" + Math.round(this.colour.r);
        this.colourString += "," + Math.round(this.colour.g);
        this.colourString += "," + Math.round(this.colour.b);
        this.colourString += "," + this.colour.a + ")";
    },
    draw: function(){
        ctx.fillStyle = this.colourString;

        ctx.beginPath();
        ctx.arc(this.x, this.y, this.radius, 0, 2*Math.PI);
        ctx.fill();
    }
};

function createParticles(){
    console.log ("w:" + width + " h:" + height + " area:" + (width * height));

    // Working on about 1 particles per 100 square pixes
    particles = [];
    numParticles =  Math.round((width * height) / 10000);

    for (var i = 0; i < numParticles; i++) {
        particles.push(new Particle(randomInt(0, width), randomInt(0, height), 0.5, random(0.5,2), random(0, Math.PI * 2)));
    }
}

var particles = [];
var numParticles = 75;

function Connection(x1, y1, x2, y2, lineWidth){
    this.p1 = {x: x1, y: y1};
    this.p2 = {x: x2, y: y2};
    this.lineWidth = lineWidth || 0.1;
}

Connection.prototype = {
    draw: function() {
        ctx.lineWidth = this.lineWidth;
        ctx.strokeStyle  = "rgb(255,255,255)";
        ctx.beginPath();
        ctx.moveTo(this.p1.x, this.p1.y);
        ctx.lineTo(this.p2.x, this.p2.y);
        ctx.stroke();
    }
};

var connectionLenghtSqr = Math.pow(150, 2);
var lines = [];

window.onresize = function(){
    SetSize();

    particles = [];
    createParticles();
}

window.onload = function(){
    SetSize();

    // Initialisation functions in here
    createParticles();

    // Finally start the animation loop
    Loop();
}
