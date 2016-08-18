$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()


  $('#show-add-effect-form').on('submit', function(event){
    event.preventDefault();

    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize()
    }).done(function(response){
      $('#add-effect-form-container').text("");
      $('#add-effect-form-container').append(response);
    });//end of ajax

  });//end of show-add-effect-form selector


  $('#add-effect-form-container').on('submit', '#add-effect', function(event){
    event.preventDefault();
    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize()
    }).done(function(response){
      $('#effects-list').append(response);
    }).fail(function(response){
      $('#effects-list').append(response);
    }); //end of ajax


  });//end of add-effect form selector



});
