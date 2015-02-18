console.log('Main.js loaded!');

$(function(){

	$(function(){
		var pageX;
		var pageY;
		$('body').mousemove(function(event){
		pageX = event.pageX - 150;
		pageY = event.pageY- 150;
		$('#lamp').css('left',pageX);
		$('#lamp').css('top',pageY);
		});
	});
});