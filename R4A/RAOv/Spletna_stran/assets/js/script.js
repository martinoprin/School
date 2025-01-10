const hamburger = document.getElementById('hamburger');
const sub_menu = document.getElementById('sub-menu');


hamburger.addEventListener('click', () => {
  hamburger.classList.toggle('active');
  sub_menu.classList.toggle('active');
  event.stopPropagation();//to tle more bit zato ker cene nedela
});

window.addEventListener('click', () => {
  if (event.target !== sub_menu && event.target !== hamburger) {
      sub_menu.classList.remove('active');
      hamburger.classList.remove('active');    
  }
});

sub_menu.addEventListener('click', (event) => {
  event.stopPropagation(); //da se ne zapre ce kliknemo na gumb v sub_menu
});

$(document).ready(function(){
  scrollToSection('#head');
  $('.preloader-container').fadeOut('slow');
});

function scrollToSection(sectionId) {
  const section = document.querySelector(sectionId);

  window.scrollTo({
    top: section.offsetTop - 100, 
    behavior: 'smooth'
  });
}

function activateDotOnScroll() {
  const sections = document.querySelectorAll('section');
  const dots = document.querySelectorAll('.dot');

  dots.forEach(dot => dot.classList.remove('active'));

  let maxCoverage = 0;
  let activeIndex = -1;

  sections.forEach((section, index) => {
    const rect = section.getBoundingClientRect();

    const coverage = Math.min(rect.bottom, window.innerHeight) - Math.max(rect.top, 0);

    if (coverage > maxCoverage) {
      maxCoverage = coverage;
      activeIndex = index;
    }
  });

  if (activeIndex !== -1) {
    dots[activeIndex].classList.add('active');
  }
}

window.addEventListener('scroll', activateDotOnScroll);
activateDotOnScroll();


const themeSwitch = document.getElementById('theme-switch');

const savedTheme = localStorage.getItem('theme') || 'dark';

document.body.className = savedTheme;

themeSwitch.checked = savedTheme === 'dark';

themeSwitch.addEventListener('change', () => {
    const newTheme = themeSwitch.checked ? 'dark' : 'light';
    document.body.className = newTheme;
    localStorage.setItem('theme', newTheme);
});


const langSwitch = document.getElementById('lang-switch');
const savedLang = localStorage.getItem('lang') || 'en';

if (savedLang === 'sl') {
    langSwitch.checked = true;
    setLanguage('sl');
} else {
    langSwitch.checked = false;
    setLanguage('en');
}


function setLanguage(lang) {
    const enParagraphs = document.querySelectorAll('.en');
    const slParagraphs = document.querySelectorAll('.sl');

    if (lang === 'en') {
        enParagraphs.forEach(p => p.style.display = 'block');
        slParagraphs.forEach(p => p.style.display = 'none');
    } else if (lang === 'sl') {
        enParagraphs.forEach(p => p.style.display = 'none');
        slParagraphs.forEach(p => p.style.display = 'block');
    }


    localStorage.setItem('lang', lang);
}

langSwitch.addEventListener('change', () => {
    const newLang = langSwitch.checked ? 'sl' : 'en';
    setLanguage(newLang);
});


function isSafari() {
  const ua = navigator.userAgent.toLowerCase();
  return ua.includes('safari') && !ua.includes('chrome') && !ua.includes('chromium');
}

if (!isSafari()) {
    const cursor = document.getElementById('cursor');

      document.addEventListener('mousemove', (e) => {
      const mouseX = e.pageX;
      const mouseY = e.pageY;

      cursor.style.left = `${mouseX}px`;
      cursor.style.top = `${mouseY}px`;

  });
}


const openModalBtn = document.getElementById('modalBtn');
const closeModalBtn = document.getElementById('close');
const modal = document.getElementById('modal');



openModalBtn.addEventListener('click', () => {
  modal.showModal();
});

closeModalBtn.addEventListener('click', () => {
  modal.close();
});


function toggleImages() {
  const images = document.querySelectorAll('.image-grid img');

  const button = document.getElementById('show-more-btn');

  const hiddenImages = Array.from(images).filter(img => img.style.display === 'none');
  
  if (hiddenImages.length > 0) {

      hiddenImages.forEach(img => img.style.display = 'block');
      button.textContent = 'Show Less'; 
  } else {
      for (let i = 3; i < images.length; i++) {
          images[i].style.display = 'none';
      }
      button.textContent = 'Show More'; 
  }
}
