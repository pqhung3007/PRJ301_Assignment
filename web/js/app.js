// AUTO TEXT EFFECT
const textEl = document.querySelector('#text')
const text = 'Welcome to Camping Paradise'
let index = 1
let speed = 200

const writeText = () => {
    textEl.innerText = text.slice(0, index)
    index++

    if (index > text.length) {
        index = 1;
    }
    setTimeout(writeText, speed)
}
writeText()

// REVEAL SECTION
const sections = document.querySelectorAll(".section")
const revealSections = (entries, observer) =>{
    const [entry] = entries
     if (entry.isIntersecting) {
        entry.target.classList.remove('section-hidden');
    }
}

const sectionObserver = new IntersectionObserver(revealSections, {
    root: null,
    threshold: 0.15,
});

sections.forEach(section => {
    sectionObserver.observe(section);
    section.classList.add('section-hidden');
})

// SLIDER COMPONENT 
const panels = document.querySelectorAll('.panel')

panels.forEach(panel => {
    panel.addEventListener('click', () => {
        removeActiveClasses()
        panel.classList.add('active')
    })
})

const removeActiveClasses = () => {
    panels.forEach(panel => {
        panel.classList.remove('active')
    })
}

const slider = function () {
    const slides = document.querySelectorAll('.slide');
    const btnLeft = document.querySelector('.slider__btn--left');
    const btnRight = document.querySelector('.slider__btn--right');
    const dotContainer = document.querySelector('.dots');

    let curSlide = 0;
    const maxSlide = slides.length;

    // Functions
    const createDots = function () {
        slides.forEach(function (_, i) {
            dotContainer.insertAdjacentHTML(
                    'beforeend',
                    `<button class="dots__dot" data-slide="${i}"></button>`
                    );
        });
    };

    const activateDot = function (slide) {
        document
                .querySelectorAll('.dots__dot')
                .forEach(dot => dot.classList.remove('dots__dot--active'));

        document
                .querySelector(`.dots__dot[data-slide="${slide}"]`)
                .classList.add('dots__dot--active');
    };

    const goToSlide = function (slide) {
        slides.forEach(
                (s, i) => (s.style.transform = `translateX(${100 * (i - slide)}%)`)
        );
    };

    // Next slide
    const nextSlide = function () {
        if (curSlide === maxSlide - 1) {
            curSlide = 0;
        } else {
            curSlide++;
        }

        goToSlide(curSlide);
        activateDot(curSlide);
    };

    const prevSlide = function () {
        if (curSlide === 0) {
            curSlide = maxSlide - 1;
        } else {
            curSlide--;
        }
        goToSlide(curSlide);
        activateDot(curSlide);
    };

    const init = function () {
        goToSlide(0);
        createDots();

        activateDot(0);
    };
    init();

    // Event handlers
    btnRight.addEventListener('click', nextSlide);
    btnLeft.addEventListener('click', prevSlide);

    document.addEventListener('keydown', function (e) {
        if (e.key === 'ArrowLeft')
            prevSlide();
        e.key === 'ArrowRight' && nextSlide();
    });

    dotContainer.addEventListener('click', function (e) {
        if (e.target.classList.contains('dots__dot')) {
            const {slide} = e.target.dataset;
            goToSlide(slide);
            activateDot(slide);
        }
    });
};
slider();