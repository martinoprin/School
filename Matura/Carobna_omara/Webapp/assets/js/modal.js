const modal = document.getElementById('Modal');
    const TitleInput = document.getElementById('Title');
    let currentTitleElement = null;

    function openModal(titleElement) {
        currentTitleElement = titleElement;
        TitleInput.value = titleElement.textContent;
        modal.style.display = "flex";
    }

    document.getElementById('saveChanges').addEventListener('click', function() {
        if (currentTitleElement) {
            currentTitleElement.textContent = TitleInput.value;
        }
        modal.style.display = "none";
    });

    document.getElementById('closeModal').addEventListener('click', function() {
        modal.style.display = "none";
    });
