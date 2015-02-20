console.log('Main.js loaded!');

$(function(){

	// var seconds = 0;
	// var timerId;
	// var $timer = $('#timer');

	// function updateTime(){
	// 	seconds++;
	// 	timer.innerText = 'Time Elapsed' + seconds;
	// }



	$(function(){
		var pageX;
		var pageY;
		$('body').mousemove(function(event){

		blah_width = (parseInt($('#lamp').css('width'))/2);
		blah_height = (parseInt($('#lamp').css('height'))/2);

		pageX = event.pageX - blah_width;
		pageY = event.pageY- blah_height;
		$('#lamp').css('left',pageX);
		$('#lamp').css('top',pageY);
		});
	});

	$('#lamp').on("click", function(){
		console.log("you clicked!");
		console.log(event.pageX, event.pageY);
		var x_coord = $('#coordinates').text().split(" ")[0];
		var y_coord = $('#coordinates').text().split(" ")[1];
		if(event.pageX > x_coord - 20 && event.pageX < x_coord + 20 && event.pageY > y_coord - 20 && event.pageY < y_coord + 20){
			expand();
		}
	});

	function expand(){
		var timesRun = 0
		var timerId = setInterval(function(){

			timesRun += 1;
			if(timesRun === 150){
       			clearInterval(timerId);
       			console.log("done!")
       			var user_id = $('#user').text();
       			var playAgain = confirm("Congratulations! You found Waldo! Would you like to play again?")
       			if(playAgain===true){
       				window.location.replace('/users/' + user_id + '/match')
       			}else{
       				window.location.replace('/users/' + user_id)

       			}
    		}
			new_width = $('#lamp').css('width');
			new_width = new_width.replace('px','');
			new_width = parseInt(new_width) + 20;

			new_height = $('#lamp').css('height');
			new_height = new_height.replace('px','');
			new_height = parseInt(new_height) + 20;

			new_radius = $('#lamp').css('border-radius');
			new_radius = new_radius.replace('px','');
			new_radius = parseInt(new_radius) + 20;

			new_top = $('#lamp').css('top');
			new_top = new_top.replace('px','');
			new_top = parseInt(new_top) - 10;

			new_left = $('#lamp').css('left');
			new_left = new_left.replace('px','');
			new_left = parseInt(new_left) - 10;

			$('#lamp').css('width',new_width);
			$('#lamp').css('height',new_height);
			$('#lamp').css('border-radius',new_radius);
			$('#lamp').css('top',new_top);
			$('#lamp').css('left',new_left);

		},20);
	}
});