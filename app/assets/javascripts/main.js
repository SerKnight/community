
function mainInit(){
	baseCampModal();
	ajaxLoader();
}


function ajaxLoader(){
	$(document).ajaxStart(function(){ 
	  $('#loader-overlay').show()
	})

	$(document).ajaxStop(function(){ 
		setTimeout(function(){
			$('#loader-overlay').fadeOut() 
		},250)
	})
}


var activeCamp = 0;

function baseCampModal(){

	$('.destination-button').click(function(e){
		activeCamp = $(this).data('num');
		e.preventDefault()		
		replaceDiv($(this))
	})

	// not sure what this was so I left it.. 
	// $('#modal-content').on('shown', function() {
 	//    $("#txtname").focus();
 	//  })


	$('#toggle-basecamp-left').click(function(){
		var campIndex = activeCamp - 1
		activeCamp = campIndex;
		replaceDiv($('*[data-num="' + campIndex + '"]'))
	})

	$('#toggle-basecamp-right').click(function(){
		var campIndex = activeCamp + 1
		activeCamp = campIndex;
		replaceDiv($('*[data-num="' + campIndex + '"]'))
	})

}

function replaceDiv(element){
	$('.modal-title').html(element.data('title'))
	$('.modal-body').html(element.data('body'))
	$('.modal-img').attr('src', element.data('img-src'))

	if(activeCamp == $('.destination-image').length ){
		$('#toggle-basecamp-right').hide()
	} else {
		$('#toggle-basecamp-right').show()
	}

	if(activeCamp == 1){
		$('#toggle-basecamp-left').hide()
	} else {
		$('#toggle-basecamp-left').show()
	}
	console.log(activeCamp)
}

