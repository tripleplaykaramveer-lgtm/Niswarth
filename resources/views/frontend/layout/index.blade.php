<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="" rel="icon">
    <link href="" rel="apple-touch-icon">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://html.shipxpeed.com/">
    <meta property="og:title" content="Shipxpeed - Fast & Reliable Shipping">
    <meta property="og:description"
        content="Experience seamless logistics and parcel forwarding with Shipxpeed. Join today!">
    <!-- Owl Carousel CSS -->

    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <link href="{{ asset('assest/dashtream/website/style.css') }}" rel="stylesheet">

    </script>

    @yield('style')

</head>

<body>

    @include('frontend.common.header')
    @yield('main_contant')
    @include('frontend.common.footer')

    <script>
        $(document).ready(function() {
            $(".custom-carousel").owlCarousel({
                loop: true,
                margin: 10, // optional spacing between items
                autoWidth: false, // set to false if you want fixed 6 items
                items: 6, // show 6 items at a time
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 3
                    },
                    1000: {
                        items: 6
                    }
                }
            });


            $(".custom-carousel .item").click(function() {
                $(".custom-carousel .item").not($(this)).removeClass("active");
                $(this).toggleClass("active");
            });
        });
    </script>
    <script src="{{ asset('assest/dashtream/js/custom.js') }}"></script>
    <script src="index.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>

</body>

</html>
