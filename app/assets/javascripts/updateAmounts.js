
function updateAmounts(old_eaters, new_eaters){
  $('.amount').each(function(){
    var currentamount = $(this).text();
    $(this).text(currentamount*(new_eaters/old_eaters));
  });

}
