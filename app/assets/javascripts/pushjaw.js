function load_home() {
  $("document").ready(function(){
    window.location.href = "#home";
  })
}
window.onload = load_home;

$(document).ready(function(){
  $(".fancybox-profile-team").fancybox({
    openEffect	: 'elastic',
    closeEffect	: 'elastic',
    helpers : {
      title : {
        type : 'inside'
      }
    }
  });

  $(".open_video").fancybox({
    type: 'ajax'
  });

  $('.nav').show();
  $("div#sliderwraper").jContent({
    orientation: 'horizontal',
    easing: "easeOutCirc",
    duration: 500,
    auto: true
  });
});
$('.cloudmoving').clouds({
  xmlMap: '/assets/clouds.xml',
  bobHeight: 2,
  speed: 12
});

function initialize() {
  var myLatlng = new google.maps.LatLng(-6.924984, 107.552818);
  var mapOptions = {
    zoom: 18,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

  var marker = new google.maps.Marker({
    position: myLatlng,
    map: map,
    title:"Hello World!"
  });
}

$(document).ready(function() {
  initialize();
  $("#tab-services").tabs();
  $("#pushjaw_team.teamwrap_nav").tabs();
  $('.tooltips').poshytip({
    className: 'tip-twitter',
    showTimeout: 1,
    alignTo: 'target',
    alignX: 'center',
    offsetY: 5,
    allowTipHover: false,
    fade: false,
    slide: false
  });
});


$(".tab-content").hide();
$("ul.tabs li:first").addClass("current").show();
$(".tab-content:first").show();

//On Click
$("ul.tabs li").click(function() {

  $("ul.tabs li").removeClass("current");
  $(this).addClass("current");
  $(".tab-content").hide();

  var activeTab = $(this).find("a").attr("href");
  $(activeTab).fadeIn();
  return false;
});