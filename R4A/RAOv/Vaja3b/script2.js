const slike = ["slike 2/album1.jpg", "slike 2/album2.jpg", "slike 2/album3.jpg", "slike 2/album4.jpg", "slike 2/album5.jpg"]
let index = 0;

function premik(smer) {
    if(smer == 0) {
        index--;
        if(index < 0) {
            index = slike.length - 1;
        }
    }
    else if(smer == 1) {
        index++;
        if(index >= slike.length) {
            index = 0;
        }
    }
    else if(smer == 2) {
        index = 0;
    }
    else if(smer == 3) {
        index = slike.length - 1;
    }
    document.getElementById("slika").src = slike[index];
}

