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

//= require jquery
//= require jquery_ujs
//= require jquery.ui.datepicker-ja
//= require jquery-ui/autocomplete
//= require autonumeric
//= require favorites
//= require_tree .

// $(document).trigger('refresh_autonumeric')

$('.datetimepicker').datetimepicker({
  format: 'Y-m-d H:i',
  inline: true,
  lang: 'ja'
});

$(document).on('click', '.favorite-unmark', function(){
    fid = "#favorites-"+this.id;
    img = "img#"+this.id;
    $.getJSON(
	"/shops/unmark/"+ this.id,
	function(json, textStatus, jqXHR){
	    $(fid).text(json.count );
	    $(img).attr("class", "favorite-mark");
	    $(img).attr("src", json.src);
	}
    );
  // clickイベントで発動する処理
});

$(document).on('click', '.favorite-mark', function(){
    fid = "#favorites-"+this.id;
    img = "img#"+this.id;
    $.getJSON(
	"/shops/mark/"+ this.id,
	function(json, textStatus, jqXHR){
	    $(fid).text(json.count )
	    $(fid).attr("style","color: #0074c3;");
	    $(img).attr("class", "favorite-unmark");
	    $(img).attr("src", json.src);
	}
    );
  // clickイベントで発動する処理
});
