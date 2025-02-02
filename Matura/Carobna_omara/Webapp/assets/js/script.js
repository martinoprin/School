class Box {
    constructor(title, description, color, position) {
        this.title = title;
        this.description = description;
        this.color = color;
        this.position = position;
    }
    displayBox(){
        console.log(this.title, this.description, this.color, this.position);
    }
}
let boxes = [];


document.getElementById('createButton').addEventListener('click', function() {
    const modal = document.getElementById('Modal');
    modal.style.display = "flex";

    const titleInput = document.getElementById("Title");
    const descriptionInput = document.getElementById("Description");
    const colorInput = document.getElementById("Color");
    const positionInput = document.getElementById("Position");

    document.getElementById('saveChanges').addEventListener('click', function() {
        boxes.push(new Box(titleInput.value, descriptionInput.value, colorInput.value, positionInput.value));
        console.log(boxes);
        modal.style.display = "none";

        const box = document.createElement('div');
        box.classList.add('box');

        const title = document.createElement('h2');
        const description = document.createElement('p');
        title.textContent = titleInput.value;
        description.textContent = descriptionInput.value;

        const buttonGroup = document.createElement('div');
        buttonGroup.classList.add('button-group');
    
        const editButton = document.createElement('button');
        editButton.classList.add('btn', 'edit');
        editButton.innerHTML = '&#x270E;';
        editButton.addEventListener('click', function() {
            openModal(title);
        });
    
        const deleteButton = document.createElement('button');
        deleteButton.classList.add('btn', 'delete');
        deleteButton.innerHTML = '&#x2716;';
        deleteButton.addEventListener('click', function() {
            box.remove();
        });
    
        buttonGroup.appendChild(editButton);
        buttonGroup.appendChild(deleteButton);

        box.appendChild(title);
        box.appendChild(description);
        box.appendChild(buttonGroup);
        document.getElementById('container').appendChild(box);
    });
    
    
});