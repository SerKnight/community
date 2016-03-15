
function mainInit(){
	baseCampModal();
}

function baseCampModal(){
	$('.destination-button').click(function(e){
		e.preventDefault()
		$('#basecamp-modal').modal('show')

		
		$('.modal-title').html($(this).data('title'))
		$('.modal-body').html($(this).data('body'))
		$('.modal-img').attr('src', $(this).data('img-src'))

	})
}