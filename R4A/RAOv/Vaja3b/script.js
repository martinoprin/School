let slideIndex = 0;
let direction = 1;
let speed = 100;
let interval;
const slides = document.querySelectorAll('.slide');

function showNextSlide() {
    slides.forEach((slide) => slide.style.display = 'none');
    
    slideIndex+=direction;

    if(slideIndex===4){
        direction = -1;
    }
    else if(slideIndex===0){
        direction = 1;
    }
    slides[slideIndex].style.display = 'block';
    console.log(speed);
}

function speedAdj(vnos){
    if(vnos){
        if(speed>0)
            speed-=50;
    }
    else{
        speed+=50;
    }
    clearInterval(interval);
    interval = setInterval(showNextSlide, speed);
}

function speedRst(){
    speed = 100;
    clearInterval(interval);
    interval = setInterval(showNextSlide, speed);
}

showNextSlide();
interval = setInterval(showNextSlide, speed);
