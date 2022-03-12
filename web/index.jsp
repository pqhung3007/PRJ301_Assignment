<%-- 
    Document   : index
    Created on : 02-Mar-2022, 21:27:54
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Camping Paradise</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
        <h2 class="details__heading">
            We’re different
        </h2>

        <div class="container">
            <div class="details__wrapper row">
                <div class="detail js-detail col-md-4">
                    <img src="assets/images/icon-snappy-process.svg" alt="" aria-hidden="true" class="detail__icon" />
                    <h3 class="heading heading--secondary">Snappy Process</h3>
                    <p class="text">
                        Our application process can be completed in minutes, not hours.
                        Don’t get stuck filling in tedious forms.
                    </p>
                </div>

                <div class="detail js-detail col-md-4">
                    <img src="assets/images/icon-affordable-prices.svg" alt="" aria-hidden="true"
                        class="detail__icon" />
                    <h3 class="heading heading--secondary">Affordable Prices</h3>
                    <p class="text">
                        We don’t want you worrying about high monthly costs. Our prices
                        may be low, but we still offer the best coverage possible.
                    </p>
                </div>

                <div class="detail js-detail col-md-4">
                    <img src="assets/images/icon-people-first.svg" alt="" aria-hidden="true" class="detail__icon" />
                    <h3 class="heading heading--secondary">People First</h3>
                    <p class="text">
                        Our plans aren’t full of conditions and clauses to prevent
                        payouts. We make sure you’re covered when you need it.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- CAMPING GALLERIES -->
    <section class="galleries section">
        <h2>Our Camping Sites</h2>
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

    </section>
    <a href="#" class="btn btn-cta btn-primary" role="button" data-bs-toggle="button">Visit More</a>


    <!-- TESTIMONIALS -->
    <section class="section" id="section--3">
        <div class="section__title section__title--testimonials">
            <h2 class="section__description">Not sure yet?</h2>
            <h3 class="section__header">
                Millions of Bankists are already making their lifes simpler.
            </h3>
        </div>

        <div class="slider">
            <div class="slide">
                <div class="testimonial">
                    <h5 class="testimonial__header">Best financial decision ever!</h5>
                    <blockquote class="testimonial__text">
                        Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                        Accusantium quas quisquam non? Quas voluptate nulla minima
                        deleniti optio ullam nesciunt, numquam corporis et asperiores
                        laboriosam sunt, praesentium suscipit blanditiis. Necessitatibus
                        id alias reiciendis, perferendis facere pariatur dolore veniam
                        autem esse non voluptatem saepe provident nihil molestiae.
                    </blockquote>
                    <address class="testimonial__author">
                        <img src="img/user-1.jpg" alt="" class="testimonial__photo" />
                        <h6 class="testimonial__name">Aarav Lynn</h6>
                        <p class="testimonial__location">San Francisco, USA</p>
                    </address>
                </div>
            </div>

            <div class="slide">
                <div class="testimonial">
                    <h5 class="testimonial__header">
                        The last step to becoming a complete minimalist
                    </h5>
                    <blockquote class="testimonial__text">
                        Quisquam itaque deserunt ullam, quia ea repellendus provident,
                        ducimus neque ipsam modi voluptatibus doloremque, corrupti
                        laborum. Incidunt numquam perferendis veritatis neque repellendus.
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Illo
                        deserunt exercitationem deleniti.
                    </blockquote>
                    <address class="testimonial__author">
                        <img src="img/user-2.jpg" alt="" class="testimonial__photo" />
                        <h6 class="testimonial__name">Miyah Miles</h6>
                        <p class="testimonial__location">London, UK</p>
                    </address>
                </div>
            </div>

            <div class="slide">
                <div class="testimonial">
                    <h5 class="testimonial__header">
                        Finally free from old-school banks
                    </h5>
                    <blockquote class="testimonial__text">
                        Debitis, nihil sit minus suscipit magni aperiam vel tenetur
                        incidunt commodi architecto numquam omnis nulla autem,
                        necessitatibus blanditiis modi similique quidem. Odio aliquam
                        culpa dicta beatae quod maiores ipsa minus consequatur error sunt,
                        deleniti saepe aliquid quos inventore sequi. Necessitatibus id
                        alias reiciendis, perferendis facere.
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
