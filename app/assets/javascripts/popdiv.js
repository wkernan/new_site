(function makeDiv(){
    var textarray = [
        "so wow!!",
        "sew amaze!",
        "much hunt!!",
        "austin cule",
        "very doge!",
        "smell coin!",
        "to the moon!",
        "spread wurd!!!",
        "so find!",
        "amaze!!",
        "such trasure!!!"];
    var rannum = Math.floor(Math.random()*textarray.length);
    var divsize = ((Math.random()*100) + 50).toFixed();
    var divrot = ((Math.random() * (70 + 70) - 70)).toFixed();
    var color = '#'+ Math.round(0xffffff * Math.random()).toString(16);
    $newdiv = $('<div/>').append("<div>"+textarray[rannum]+"</div>").css({
        'width': '500px',
        'height': '50px',
        'font-size': '46px',
        'color': color,
        'font-family': 'Comic Sans MS'
    });
    
    var posx = (Math.random() * ($(document).width() - divsize)).toFixed();
    var posy = (Math.random() * ($(document).height() - divsize)).toFixed();
    
    $newdiv.css({
        'position':'absolute',
        '-webkit-transform':'rotate('+divrot+'deg)',
        'left':posx+'px',
        'top':posy+'px',
        'display':'none'
    }).appendTo( 'body' ).fadeIn(300).delay(5000).fadeOut(400, function(){
       $(this).remove();
       makeDiv(); 
    }); 
})();