		/***********************************skill****************************************/
		var ctx_one = document.getElementById('skill_one').getContext('2d');
		var al_one = 0;
		var start = 4.72;
		var cw = ctx_one.canvas.width;
		var ch = ctx_one.canvas.height;
		var diff_one;
		var gld_one;
		function progressSim_one(){
			diff_one = ((al_one / 100) * Math.PI*2*10).toFixed(2);
			ctx_one.clearRect(0, 0, cw, ch);
			ctx_one.lineWidth = 30;
			/*ctx_one.strokeStyle = "#fff";*/
			gld_one=ctx_one.createLinearGradient(0, 170, 100,400);//漸層位置
			gld_one.addColorStop(0, "#F3C300");
		gld_one.addColorStop(1, "#FF5701");
		ctx_one.strokeStyle=gld_one;

			ctx_one.textAlign = 'center';//中心
			ctx_one.font = "20px Arial";//字體
			ctx_one.fillStyle = '#FFF';//字體顏色
				ctx_one.beginPath();
				ctx_one.arc(140, 140, 60, start, diff_one/10+start, false);
			//圓大小
			ctx_one.stroke();
			if(al_one >= 85){
				clearTimeout(sim_one);
			// Add scripting here that will run when progress completes
			}
			
		ctx_one.fillText(al_one+'%', cw*.4+5, ch*.4+2, cw);
		al_one++;
		}
		var sim_one = setInterval(progressSim_one, 50);
		



		/*two*/
			var ctx_two = document.getElementById('skill_two').getContext('2d');
		var al_two = 0;
		var start = 4.72;
		var cw = ctx_two.canvas.width;
		var ch = ctx_two.canvas.height;
		var diff_two;
		var gld_two;
		function progressSim_two(){
			diff_two = ((al_two / 100) * Math.PI*2*10).toFixed(2);
			ctx_two.clearRect(0, 0, cw, ch);
			ctx_two.lineWidth = 30;
			/*ctx_one.strokeStyle = "#fff";*/
			gld_two=ctx_two.createLinearGradient(0, 170, 100,400);//漸層位置
			gld_two.addColorStop(0, "#F3C300");
		gld_two.addColorStop(1, "#FF5701");
		ctx_two.strokeStyle=gld_two;

			ctx_two.textAlign = 'center';//中心
			ctx_two.font = "20px Arial";//字體
			ctx_two.fillStyle = '#FFF';//字體顏色
				ctx_two.beginPath();
				ctx_two.arc(140, 140, 60, start, diff_two/10+start, false);
			//圓大小
			ctx_two.stroke();
			if(al_two >= 80){
				clearTimeout(sim_two);
			// Add scripting here that will run when progress completes
			}
			
		ctx_two.fillText(al_two+'%', cw*.4+5, ch*.4+2, cw);
		al_two++;
		}
		var sim_two = setInterval(progressSim_two, 50);
		
		
		/*three*/
			var ctx_three = document.getElementById('skill_three').getContext('2d');
		var al_three = 0;
		var start = 4.72;
		var cw = ctx_two.canvas.width;
		var ch = ctx_two.canvas.height;
		var diff_three;
		var gld_three;
		function progressSim_three(){
			diff_three = ((al_three / 100) * Math.PI*2*10).toFixed(2);
			ctx_three.clearRect(0, 0, cw, ch);
			ctx_three.lineWidth = 30;
			/*ctx_one.strokeStyle = "#fff";*/
			gld_three=ctx_three.createLinearGradient(0, 170, 100,400);//漸層位置
			gld_three.addColorStop(0, "#F3C300");
		gld_three.addColorStop(1, "#FF5701");
		ctx_three.strokeStyle=gld_three;

			ctx_three.textAlign = 'center';//中心
			ctx_three.font = "20px Arial";//字體
			ctx_three.fillStyle = '#FFF';//字體顏色
				ctx_three.beginPath();
				ctx_three.arc(140, 140, 60, start, diff_three/10+start, false);
			//圓大小
			ctx_three.stroke();
			if(al_three >= 65){
				clearTimeout(sim_three);
			// Add scripting here that will run when progress completes
			}
			
		ctx_three.fillText(al_three+'%', cw*.4+5, ch*.4+2, cw);
		al_three++;
		}
		var sim_three = setInterval(progressSim_three, 50);

		
		
			/*four*/
			var ctx_four = document.getElementById('skill_four').getContext('2d');
		var al_four = 0;
		var start = 4.72;
		var cw = ctx_four.canvas.width;
		var ch = ctx_four.canvas.height;
		var diff_four;
		var gld_four;
		function progressSim_four(){
			diff_four = ((al_four / 100) * Math.PI*2*10).toFixed(2);
			ctx_four.clearRect(0, 0, cw, ch);
			ctx_four.lineWidth = 30;
			/*ctx_one.strokeStyle = "#fff";*/
			gld_four=ctx_four.createLinearGradient(0, 170, 100,400);//漸層位置
			gld_four.addColorStop(0, "#F3C300");
		gld_four.addColorStop(1, "#FF5701");
		ctx_four.strokeStyle=gld_four;

			ctx_four.textAlign = 'center';//中心
			ctx_four.font = "20px Arial";//字體
			ctx_four.fillStyle = '#FFF';//字體顏色
				ctx_four.beginPath();
				ctx_four.arc(140, 140, 60, start, diff_four/10+start, false);
			//圓大小
			ctx_four.stroke();
			if(al_four >= 60){
				clearTimeout(sim_four);
			// Add scripting here that will run when progress completes
			}
			
		ctx_four.fillText(al_four+'%', cw*.4+5, ch*.4+2, cw);
		al_four++;
		}
		var sim_four = setInterval(progressSim_four, 30);




/***********************************exper****************************************/



	/*five*/
			var ctx_five = document.getElementById('skill_five').getContext('2d');
		var al_five = 0;
		var start = 4.72;
		var cw = ctx_five.canvas.width;
		var ch = ctx_five.canvas.height;
		var diff_five;
		var gld_five;
		function progressSim_five(){
			diff_five = ((al_five / 100) * Math.PI*2*10).toFixed(2);
			ctx_five.clearRect(0, 0, cw, ch);
			ctx_five.lineWidth = 30;
			/*ctx_one.strokeStyle = "#fff";*/
			gld_five=ctx_five.createLinearGradient(0, 170, 100,400);//漸層位置
			gld_five.addColorStop(0, "#F3C300");
		gld_five.addColorStop(1, "#FF5701");
		ctx_five.strokeStyle=gld_five;

			ctx_five.textAlign = 'center';//中心
			ctx_five.font = "20px Arial";//字體
			ctx_five.fillStyle = '#000';//字體顏色
				ctx_five.beginPath();
				ctx_five.arc(140, 140, 60, start, diff_five/10+start, false);
			//圓大小
			ctx_five.stroke();
			if(al_five >= 76){
				clearTimeout(sim_five);
			// Add scripting here that will run when progress completes
			}
			
		ctx_five.fillText(al_five+'%', cw*.4+5, ch*.4+2, cw);
		al_five++;
		}
		var sim_five = setInterval(progressSim_five, 30);

		/*six*/
			var ctx_six = document.getElementById('skill_six').getContext('2d');
		var al_six = 0;
		var start = 4.72;
		var cw = ctx_six.canvas.width;
		var ch = ctx_six.canvas.height;
		var diff_six;
		var gld_six;
		function progressSim_six(){
			diff_six = ((al_six / 100) * Math.PI*2*10).toFixed(2);
			ctx_six.clearRect(0, 0, cw, ch);
			ctx_six.lineWidth = 30;
			/*ctx_one.strokeStyle = "#fff";*/
			gld_six=ctx_six.createLinearGradient(0, 170, 100,400);//漸層位置
			gld_six.addColorStop(0, "#F3C300");
		gld_six.addColorStop(1, "#FF5701");
		ctx_six.strokeStyle=gld_six;

			ctx_six.textAlign = 'center';//中心
			ctx_six.font = "20px Arial";//字體
			ctx_six.fillStyle = '#000';//字體顏色
				ctx_six.beginPath();
				ctx_six.arc(140, 140, 60, start, diff_six/10+start, false);
			//圓大小
			ctx_six.stroke();
			if(al_six >= 80){
				clearTimeout(sim_six);
			// Add scripting here that will run when progress completes
			}
			
		ctx_six.fillText(al_six+'%', cw*.4+5, ch*.4+2, cw);
		al_six++;
		}
		var sim_six = setInterval(progressSim_six, 50);

		/*seven*/
			var ctx_seven = document.getElementById('skill_seven').getContext('2d');
		var al_seven = 0;
		var start = 4.72;
		var cw = ctx_seven.canvas.width;
		var ch = ctx_seven.canvas.height;
		var diff_seven;
		var gld_seven;
		function progressSim_seven(){
			diff_seven = ((al_six / 100) * Math.PI*2*10).toFixed(2);
			ctx_seven.clearRect(0, 0, cw, ch);
			ctx_seven.lineWidth = 30;
			/*ctx_one.strokeStyle = "#fff";*/
			gld_seven=ctx_seven.createLinearGradient(0, 170, 100,400);//漸層位置
			gld_seven.addColorStop(0, "#F3C300");
		gld_seven.addColorStop(1, "#FF5701");
		ctx_seven.strokeStyle=gld_seven;

			ctx_seven.textAlign = 'center';//中心
			ctx_seven.font = "20px Arial";//字體
			ctx_seven.fillStyle = '#000';//字體顏色
				ctx_seven.beginPath();
				ctx_seven.arc(140, 140, 60, start, diff_seven/10+start, false);
			//圓大小
			ctx_seven.stroke();
			if(al_seven >= 70){
				clearTimeout(sim_seven);
			// Add scripting here that will run when progress completes
			}
			
		ctx_seven.fillText(al_seven+'%', cw*.4+5, ch*.4+2, cw);
		al_seven++;
		}
		var sim_seven = setInterval(progressSim_seven, 40);


/*eight*/
			var ctx_eight = document.getElementById('skill_eight').getContext('2d');
		var al_eight = 0;
		var start = 4.72;
		var cw = ctx_eight.canvas.width;
		var ch = ctx_eight.canvas.height;
		var diff_eight;
		var gld_eight;
		function progressSim_eight(){
			diff_eight = ((al_six / 100) * Math.PI*2*10).toFixed(2);
			ctx_eight.clearRect(0, 0, cw, ch);
			ctx_eight.lineWidth = 30;
			/*ctx_one.strokeStyle = "#fff";*/
			gld_eight=ctx_eight.createLinearGradient(0, 170, 100,400);//漸層位置
			gld_eight.addColorStop(0, "#F3C300");
		gld_eight.addColorStop(1, "#FF5701");
		ctx_eight.strokeStyle=gld_eight;

			ctx_eight.textAlign = 'center';//中心
			ctx_eight.font = "20px Arial";//字體
			ctx_eight.fillStyle = '#000';//字體顏色
				ctx_eight.beginPath();
				ctx_eight.arc(140, 140, 60, start, diff_eight/10+start, false);
			//圓大小
			ctx_eight.stroke();
			if(al_eight >= 60){
				clearTimeout(sim_eight);
			// Add scripting here that will run when progress completes
			}
			
		ctx_eight.fillText(al_eight+'%', cw*.4+5, ch*.4+2, cw);
		al_eight++;
		}
		var sim_eight = setInterval(progressSim_eight, 40);

