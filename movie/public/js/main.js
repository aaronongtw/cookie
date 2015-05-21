var buyPrice

var buyStock = function() {
  console.log("test")
  buyPrice = parseInt($('#results b').html())
  stockName = $('#finance h3').html()
  $('#info').html("<p>Bought " + stockName + " at " + buyPrice + "</p>")
}

var sellStock = function() {
  sellPrice = parseInt($('#results b').html())
  stockName = $('#finance h3').html()
  profit = sellPrice - buyPrice
  if (profit > 0) {
   $('#info').html("Profit Made : " + profit)
  }
  else 
    $('#info').html("A Loss of : " + profit)
}



$('#buy').on('click',buyStock)
$('#sell').on('click',sellStock)