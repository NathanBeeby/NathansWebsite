$('.owl-header').owlCarousel({
    //animateOut: 'fadeOut',
    //animateIn: 'fadeIn',
    loop: true,
    nav:true,
    items: 1,
    margin: 0,
    autoplay: true,
    autoplayHoverPause:true,
    stagePadding: 0,
    smartSpeed: 450,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
    }
});

$('.owl-circle').owlCarousel({
    //animateOut: 'fadeOut',
    //animateIn: 'fadeIn',
    loop: true,
    nav: true,
    items: 1,
    margin: 0,
    autoplay: true,
    autoplayHoverPause: true,
    stagePadding: 0,
    smartSpeed: 450,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 3
        },
        1000: {
            items: 5
        }
    }
});