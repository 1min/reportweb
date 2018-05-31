$(document).ready(function(){
  $('.company_index_1').click(function() {
    $('.company_index_1_contents').css("display","flex");
    $('.company_index_2_contents').css("display","none");
  });
  $('.company_index_2').click(function() {
    $('.company_index_2_contents').css("display","flex");
    $('.company_index_1_contents').css("display","none");
  });

  $('.Rent_index_1').click(function() {
    $('.Rent_index_1_contents').css("display","flex");
    $('.Rent_index_2_contents').css("display","none");
    $('.Rent_index_3_contents').css("display","none");
    $('.Rent_index_4_contents').css("display","none");
  });
  $('.Rent_index_2').click(function() {
    $('.Rent_index_2_contents').css("display","flex");
    $('.Rent_index_1_contents').css("display","none");
    $('.Rent_index_3_contents').css("display","none");
    $('.Rent_index_4_contents').css("display","none");
  });

  $('.Rent_index_3').click(function() {
    $('.Rent_index_3_contents').css("display","flex");
    $('.Rent_index_1_contents').css("display","none");
    $('.Rent_index_2_contents').css("display","none");
    $('.Rent_index_4_contents').css("display","none");
  });

  $('.Rent_index_4').click(function() {
    $('.Rent_index_4_contents').css("display","flex");
    $('.Rent_index_1_contents').css("display","none");
    $('.Rent_index_2_contents').css("display","none");
    $('.Rent_index_3_contents').css("display","none");
  });

});
