const sonce = document.getElementById('sonce');

<<<<<<< HEAD
const radius = 800;
=======
const radius = window.innerWidth/2;
>>>>>>> 1a8fd79c76eec120d9df217f096fe8028ab7940f

let zahod = -5; 
let vzhod = 185;
let angle = 270;



function izracunajKot() {
  const trenutniCas = new Date();
  const soncniVzhod = new Date();
  const soncniZahod = new Date();


<<<<<<< HEAD
  //trenutniCas.setHours(13, 0, 0);
=======
  //trenutniCas.setHours(17, 0, 0);
>>>>>>> 1a8fd79c76eec120d9df217f096fe8028ab7940f
  soncniVzhod.setHours(6, 0, 0);
  soncniZahod.setHours(20, 0, 0);

if (trenutniCas >= soncniVzhod && trenutniCas <= soncniZahod) {
  let procent = (trenutniCas - soncniVzhod) / (soncniZahod - soncniVzhod);
  angle = vzhod + (zahod - vzhod) * (procent);
<<<<<<< HEAD
=======
  console.log(angle);
>>>>>>> 1a8fd79c76eec120d9df217f096fe8028ab7940f
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