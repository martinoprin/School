const recept = {
    naslov: "Palačinke",
    porcije: 4,
    sestavine: ["jajca", "moka", "mleko", "sol", "sladkor"],
}

document.getElementById("naslov").innerHTML = recept.naslov;
document.getElementById("porcije").innerHTML = recept.porcije;

const tableBody = document.getElementById("sestavine");

recept.sestavine.forEach((fruit, index) => {
    const row = document.createElement("tr");

    const fruitCell = document.createElement("td");
    fruitCell.textContent = fruit;
    row.appendChild(fruitCell);

    tableBody.appendChild(row);
});

document.getElementById("naslov").onclick = () => {
    alert("To je moj najljubsi recept!");
  };

const colors = ["#FF5733", "#33FF57", "#3357FF", "#FF33A6", "#FF8333", "#B6FF33"];

const tds = document.querySelectorAll("#sestavine td");

  tds.forEach((td, index) => {
    td.addEventListener("mouseover", () => {
      td.style.backgroundColor = colors[index % colors.length];
    });

    td.addEventListener("mouseout", () => {
      td.style.backgroundColor = "";
    });
  });