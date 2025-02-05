class Box {
    constructor(title, description, color, position) {
        this.title = title;
        this.description = description;
        this.color = color;
        this.position = position;
    }
}
let boxes = [];

const modal = document.getElementById('Modal');
const TitleInput = document.getElementById('Title');
const DescriptionInput = document.getElementById('Description');
const ColorInput = document.getElementById('Color');
const PositionInput = document.getElementById('Position');

let currentBox = null;
function openModal(box, callback) {
    currentBox = box;
    TitleInput.value = box.title;
    DescriptionInput.value = box.description;
    ColorInput.value = box.color;
    PositionInput.value = box.position;
    modal.style.display = "flex";

    document.getElementById('saveChanges').onclick = function() {
        currentBox.title = TitleInput.value;
        currentBox.description = DescriptionInput.value;
        currentBox.color = ColorInput.value;
        currentBox.position = PositionInput.value;
        modal.style.display = "none";
        callback(currentBox);
    };
}

document.getElementById('closeModal').addEventListener('click', function() {
    modal.style.display = "none";
});
