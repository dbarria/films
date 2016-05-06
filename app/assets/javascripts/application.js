// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
function selectDudesRoles(){
  $('#team_dude_id').change(function(){
    dude = $(this).val();
    console.log(dude);
    movie_id = $("#movie_id").val();
    $.ajax({
      url: "/dudes/" +dude +"/roles_availables.json?movie_id=" + movie_id,
      dataType: "json"
    }).done(function(data) {
      options = ""
      $.each( data, function( key, value ) {
        options = options + '<option value="' + value.id + '">' + value.name+ '</option>'
      });
      console.log(options)
      $('#team_role_id').html(options)


    });
  });
}
$(document).ready(function(){


  selectDudesRoles();
});
