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
            <h1>Welcome to Camping Paradise</h1>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores, consequuntur?</p>
        </div>
    </div>

    <!-- ADVANTAGES -->
    <section class="details js-section">
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
    <section class="galleries">
        <h2>Our Camping Sites</h2>
        <div class="images__container">
            <div class="panel active"
                style="background-image: url('https://images.unsplash.com/photo-1558979158-65a1eaa08691?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')">
                <h3>Explore The World</h3>
            </div>
            <div class="panel"
                style="background-image: url('https://images.unsplash.com/photo-1572276596237-5db2c3e16c5d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')">
                <h3>Wild Forest</h3>
            </div>
            <div class="panel"
                style="background-image: url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1353&q=80')">
                <h3>Sunny Beach</h3>
            </div>
            <div class="panel"
                style="background-image: url('https://images.unsplash.com/photo-1551009175-8a68da93d5f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')">
                <h3>City on Winter</h3>
            </div>
            <div class="panel"
                style="background-image: url('https://images.unsplash.com/photo-1549880338-65ddcdfd017b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')">
                <h3>Mountains - Clouds</h3>
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