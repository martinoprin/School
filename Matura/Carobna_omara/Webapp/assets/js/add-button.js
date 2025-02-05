document.getElementById('createButton').addEventListener('click', function() {
    const box = document.createElement('div');
    box.classList.add('box');

    const title = document.createElement('h2');
    const description = document.createElement('p');
    title.textContent = 'ITEM';
    description.textContent = '';

    const buttonGroup = document.createElement('div');
    buttonGroup.classList.add('button-group');

    const editButton = document.createElement('button');
    editButton.classList.add('btn', 'edit');
    editButton.innerHTML = '&#x270E;';
    editButton.addEventListener('click', function() {
        const boxData = {
            title: title.textContent,
            description: description.textContent,
            color: '',
            position: '' 
        };
        openModal(boxData, function(updatedData) {
            title.textContent = updatedData.title;
            description.textContent = updatedData.description;
        });

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


