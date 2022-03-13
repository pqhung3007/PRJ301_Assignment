<%-- Document : index Created on : 02-Mar-2022, 21:27:54 Author : Administrator --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Camping Paradise</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
              crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" type="image/png" href="assets/images/camping.png">
    </head>

    <body>
        <%@include file="components/navBar.jsp" %>

        <!-- COVER -->
        <div class="hero">
            <div class="container">
                <h1 id="text">Welcome to Camping Paradise</h1>
                <p>Jump right in and explore out many campsites <br> Hope you would find tranquility there!</p>
            </div>
        </div>

        <!-- ADVANTAGES -->
        <section class="details section">
            <h1 class="details__heading">
                We’re different
            </h1>

            <div class="container">
                <div class="details__wrapper row">
                    <div class="detail js-detail col-md-4">
                        <img src="assets/images/icon-snappy-process.svg" alt="" aria-hidden="true"
                             class="detail__icon" />
                        <h3 class="heading heading--secondary">Relationship building</h3>
                        <p class="text">
                            When you go camping with friends or family, 
                            you get a chance to talk and visit without distraction, 
                            even late into the night
                        </p>
                    </div>

                    <div class="detail js-detail col-md-4">
                        <img src="assets/images/icon-affordable-prices.svg" alt="" aria-hidden="true"
                             class="detail__icon" />
                        <h3 class="heading heading--secondary">Connection with nature</h3>
                        <p class="text">
                            When you’re camping, you get a chance to get in touch with nature, 
                            encounter wildlife and see the stars away from the bright lights of the big city. 
                            There’s nothing quite like it
                        </p>
                    </div>

                    <div class="detail js-detail col-md-4">
                        <img src="assets/images/icon-people-first.svg" alt="" aria-hidden="true"
                             class="detail__icon" />
                        <h3 class="heading heading--secondary">Stress reduction</h3>
                        <p class="text">
                            Leave the overbooked scheduling at home. When you’re camping, there’s no place to be at a certain time, 
                            and there’s nothing interrupting you or competing for your attention
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- CAMPING GALLERIES -->
        <section class="galleries section">
            <h1>Our Camping Sites</h1>
            <div class="images__container">
                <div class="panel"
                     style="background-image: url('https://images.unsplash.com/photo-1478131143081-80f7f84ca84d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')">
                    <h3>Nova Scotia Paradise</h3>
                </div>
                <div class="panel"
                     style="background-image: url('https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')">
                    <h3>Peaceable Gardening</h3>
                </div>
                <div class="panel"
                     style="background-image: url('https://images.unsplash.com/photo-1623072932867-80d024272cb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80')">
                    <h3>The Brilliant Blossoms</h3>
                </div>
                <div class="panel"
                     style="background-image: url('https://images.unsplash.com/photo-1606402179428-a57976d71fa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80')">
                    <h3>Hanoi Travellers</h3>
                </div>
                <div class="panel"
                     style="background-image: url('https://images.unsplash.com/photo-1525811902-f2342640856e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80')">
                    <h3>Hanoi Bed and Breakfast</h3>
                </div>
            </div>

            <div class="cta-div">
                <a href="campsites" class="cta">Visit More</a>
                </divc>
        </section>


        <!-- TESTIMONIALS -->
        <section class="section" id="section--3">
            <div class="section__title section__title--testimonials">
                <h1 class="section__description">Not sure yet?</h1>
                <h3 class="section__header">
                    Hundreds of customers have had memorable experiences with us.
                </h3>
            </div>

            <div class="slider">
                <div class="slide">
                    <div class="testimonial">
                        <h5 class="testimonial__header">What can I say? It's more than excellent</h5>
                        <blockquote class="testimonial__text">
                            Good location for family camping near Hanoi.
                            The service is good. Basic camping equipment such as tent, table and chair are rentable.
                            It’s also a favorite start point of trail runners.
                        </blockquote>
                        <address class="testimonial__author">
                            <img src="img/user-1.jpg" alt="" class="testimonial__photo" />
                            <h6 class="testimonial__name">Hiep Dao Trong</h6>
                            <p class="testimonial__location">Hanoi, Vietnam</p>
                        </address>
                    </div>
                </div>

                <div class="slide">
                    <div class="testimonial">
                        <h5 class="testimonial__header">
                            Well organised and supported
                        </h5>
                        <blockquote class="testimonial__text">
                            Good location for camping and trail running, the host is friendly and tentative. 
                            You can enjoy your lunch with drilled pork and chicken after hard climbing on Ham Lon peak.
                            It's well organised and supported, camping from an open spot to rent virtually everything, you might need: As you prefer.
                        </blockquote>
                        <address class="testimonial__author">
                            <img src="img/user-2.jpg" alt="" class="testimonial__photo" />
                            <h6 class="testimonial__name">Quang Nguyen</h6>
                            <p class="testimonial__location">Vinh Phuc, Vietnam</p>
                        </address>
                    </div>
                </div>

                <div class="slide">
                    <div class="testimonial">
                        <h5 class="testimonial__header">
                            Finally free from city's hustle-bustle
                        </h5>
                        <blockquote class="testimonial__text">
                            Good location for family camping near Hanoi.
                            The service is good. Basic camping equipment such as tent, table and chair are rentable.
                            It’s also a favourite start point of trail runners. Food is nice and we'll prepared.

                        </blockquote>
                        <address class="testimonial__author">
                            <img src="img/user-3.jpg" alt="" class="testimonial__photo" />
                            <h6 class="testimonial__name">Francisco Gomes</h6>
                            <p class="testimonial__location">Lisbon, Portugal</p>
                        </address>
                    </div>
                </div>

                <button class="slider__btn slider__btn--left">&larr;</button>
                <button class="slider__btn slider__btn--right">&rarr;</button>
                <div class="dots"></div>
            </div>
        </section>

        <%@include file="components/footer.jsp" %>

        <script src="js/app.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    </body>
</html>