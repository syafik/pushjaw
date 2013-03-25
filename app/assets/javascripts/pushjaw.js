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



$(document).ready(function() {
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