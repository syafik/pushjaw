$(document).ready(function(){
            console.log("down")
    $('#site #home').addClass('active');
    $('body').bind('mousewheel', function(event, delta, deltaX, deltaY) {
        if (delta == 1){
            console.log("up")
            var site_id = $('#site div.active').attr('id')
            //            $('.navigation li a.active').parent().prev().find('a').click()
            if (site_id == "home") {
                $('#site div.active').prev().addClass('active')
                $('a.portfolio').click()
                $('#site div.active').next().removeClass('active')
            }else if (site_id == "portfolio") {
                $('#site div.active').prev().addClass('active')
                $('a.services').click()
                $('#site div.active').next().removeClass('active')
            }else if (site_id == "services") {
                
            }else if (site_id == "Contact") {
                $('#site div.active').prev().addClass('active')
                $('a.about').click()
                $('#site div.active').next().removeClass('active')
            }else if (site_id == "About") {
                $('#site div.active').prev().addClass('active')
                $('a.home').click()
                $('#site div.active').next().removeClass('active')
            } 
            
        }else{
            var site_id = $('#site div.active').attr('id')
            //            $('.navigation li a.active').parent().next().find('a').click()
            if (site_id == "home") {
                $('#site div.active').next().addClass('active')
                $('a.about').click()
                $('#site div.active').prev().removeClass('active')
            }else if (site_id == "About") {
                $('#site div.active').next().addClass('active')
                $('a.contact').click()
                $('#site div.active').prev().removeClass('active')
            }else if (site_id == "Contact") {

            }else if (site_id == "services") {
                $('#site div.active').next().addClass('active')
                $('a.portfolio').click()
                $('#site div.active').prev().removeClass('active')
            }else if (site_id == "portfolio") {
                $('#site div.active').next().addClass('active')
                $('a.home').click()
                $('#site div.active').prev().removeClass('active')
            } 
        }
    });
})