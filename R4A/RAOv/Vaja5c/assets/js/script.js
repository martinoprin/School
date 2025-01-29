const modal = document.getElementById('modal');
const openModalButton = document.getElementById('openModalBtn');
const closeModalButton = document.getElementById('closeModal');
const cancelModalButton = document.getElementById('cancelModal');

// Open modal
openModalButton.addEventListener('click', () => {
    modal.classList.add('modal-open');
});

// Close modal function
const closeModal = () => {
    modal.classList.remove('modal-open');
};

// Close modal when close button (×) is clicked
closeModalButton.addEventListener('click', closeModal);

// Close modal when cancel button (Prekliči) is clicked
cancelModalButton.addEventListener('click', closeModal);

// Close modal when clicking outside the modal
modal.addEventListener('click', (event) => {
    if (event.target === modal) {
        closeModal();
    }
});