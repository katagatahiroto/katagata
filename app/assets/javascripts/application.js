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

// jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery.datetimepicker.js
// jquery.ui.datepicker-ja
//= require jquery.elevatezoom.js
// jquery-ui/autocomplete
//= require autonumeric
//= require favorites
//= require_tree .

// $(document).trigger('refresh_autonumeric')

$('.datetimepicker').datetimepicker();


$(function() {
    $(".zoom").elevateZoom();
});

$(document).on('click', '.elevatezoom-gallery', function(){
    //newimg = "<img class='zoom' data-zoom-image='" +this.dataset.zoomImage + "' src='" +this["src"] + "' />" ;
    //alert(newimg);
    //document.getElementById("zoom-image").innerHTML=newimg;
	//.html(newimg) ;
    document.getElementById("shop-image").src = this["src"];
    document.getElementById("shop-image").dataset.zoomImage = this.dataset.zoomImage;
}
	      )
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
