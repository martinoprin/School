const sonce = document.getElementById('sonce');

const radius = 800;

let zahod = -5; 
let vzhod = 185;
let angle = 270;



function izracunajKot() {
  const trenutniCas = new Date();
  const soncniVzhod = new Date();
  const soncniZahod = new Date();


  //trenutniCas.setHours(13, 0, 0);
  soncniVzhod.setHours(6, 0, 0);
  soncniZahod.setHours(20, 0, 0);

if (trenutniCas >= soncniVzhod && trenutniCas <= soncniZahod) {
  let procent = (trenutniCas - soncniVzhod) / (soncniZahod - soncniVzhod);
  angle = vzhod + (zahod - vzhod) * (procent);
}
else {
  angle = 270;
}

  premakniSonce(angle);
}

function premakniSonce(angle) {
  let osnovniX = window.innerWidth / 2;
  let osnovniY = window.innerHeight;

  const angleInRadians = angle * Math.PI / 180;

  let x = osnovniX + radius * Math.cos(angleInRadians);
  let y = osnovniY - radius * Math.sin(angleInRadians);

  const leftPercentage = (x / window.innerWidth) * 100;
  const topPercentage = (y / window.innerHeight) * 100;

  sonce.style.left = `${leftPercentage}%`;
  sonce.style.top = `${topPercentage}%`;


  requestAnimationFrame(izracunajKot);
}


izracunajKot();