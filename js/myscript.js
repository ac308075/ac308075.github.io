//Mega Menu
$('li.has-mega-menu').each(function (idx, val) {
    var set = 6, //Number of links to display in each column
        buffer = [],
        dropdown = $('.dropdown-menu', this),
        children = dropdown.children(),
        cols = Math.ceil(children.length / set),
        col_class = 'col-6 col-md-' + (cols >= 5 ? '2' : (cols == 4 ? '3' : (cols == 3 ? '4' : 'x'))),
        container_class = 'px-0 container container-' + (cols == 2 ? 'sm' : (cols == 3 ? 'md' : (cols == 4 ? 'lg' : (cols >= 5 ? 'xl' : 'x'))));

    for (var i = 0; i < cols; i++) {
        buffer.push('<div class="' + col_class + '">');
        children.slice(i * set, (i + 1) * set).each(function () {
            buffer.push($(this).prop('outerHTML'));
        });
        buffer.push('</div>');
    }

    dropdown.html('<div class="' + container_class + '"><div class="row">' + buffer.join('\n') + '</div></div>');
});

//Navbar固定上方
$(function () {

    $(window).scroll(function () {
        //var $(window).scrollTop(); 為 scroll
        var scroll = $(window).scrollTop();
        //當卷軸超過70px，自動加上 .navbar-fixed-top ，如果小於就移除
        if (screen.width >= 992) {
            if (scroll >= 70) {

                $(".navbar-scroll").addClass("navbar-fixed-top");

            } else {

                $(".navbar-scroll").removeClass("navbar-fixed-top")

            }
        }
        if (screen.width <= 991) {
            if (scroll >= 70) {

                $(".navbar-scroll").addClass("navbar-fixed-top");

            } else {

                $(".navbar-scroll").removeClass("navbar-fixed-top")

            }
        } 

    });

})

//Banner輪播速度
$('.carousel').carousel({
    interval: 4000
})
