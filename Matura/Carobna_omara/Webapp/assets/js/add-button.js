document.getElementById('createButton').addEventListener('click', function() {
    const box = document.createElement('div');
    box.classList.add('box');

    const title = document.createElement('h2');
    title.textContent = 'ITEM';

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
    box.appendChild(buttonGroup);

    document.getElementById('container').appendChild(box);
});


const modal = document.getElementById('editModal');
    const editTitleInput = document.getElementById('editTitle');
    let currentTitleElement = null;

    function openModal(titleElement) {
        currentTitleElement = titleElement;
        editTitleInput.value = titleElement.textContent;
        modal.style.display = "flex";
    }

    document.getElementById('saveChanges').addEventListener('click', function() {
        if (currentTitleElement) {
            currentTitleElement.textContent = editTitleInput.value;
        }
        modal.style.display = "none";
    });

    document.getElementById('closeModal').addEventListener('click', function() {
        modal.style.display = "none";
    });
