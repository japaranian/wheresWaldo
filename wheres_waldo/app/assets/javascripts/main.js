console.log('Main.js loaded!');

$(function(){

	$(function(){
		var pageX;
		var pageY;
		$('body').mousemove(function(event){

	 	blah_width = (parseInt($('#lamp').css('width'))/2)
	 	blah_height = (parseInt($('#lamp').css('height'))/2)

		pageX = event.pageX - blah_width;
		pageY = event.pageY- blah_height;
		$('#lamp').css('left',pageX);
		$('#lamp').css('top',pageY);
		});
	});

	$('#lamp').on("click", function(){
		console.log("you clicked!");
		console.log(event.pageX, event.pageY);
		if(event.pageX > 650 && event.pageX < 750 && event.pageY > 100 && event.pageY < 300){
			expand()
		}
	});

	function expand(){
		setInterval(function(){
			new_width = $('#lamp').css('width')
			new_width = new_width.replace('px','')
			new_width = parseInt(new_width) + 20

			new_height = $('#lamp').css('height')
			new_height = new_height.replace('px','')
			new_height = parseInt(new_height) + 20

			new_radius = $('#lamp').css('border-radius')
			new_radius = new_radius.replace('px','')
			new_radius = parseInt(new_radius) + 20

			new_top = $('#lamp').css('top')
			new_top = new_top.replace('px','')
			new_top = parseInt(new_top) - 10

			new_left = $('#lamp').css('left')
			new_left = new_left.replace('px','')
			new_left = parseInt(new_left) - 10

			$('#lamp').css('width',new_width)
			$('#lamp').css('height',new_height)
			$('#lamp').css('border-radius',new_radius)
			$('#lamp').css('top',new_top)
			$('#lamp').css('left',new_left)

		},20)
	}
});