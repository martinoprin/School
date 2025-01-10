document.getElementById("dodaj").addEventListener("click", function () {

    const lastMember = document.querySelector(".form-section:last-of-type");
    
    const newMember = lastMember.cloneNode(true);

    //lastMember.parentNode.insertBefore(newMember, document.getElementById(".form-section:last-of-type"));
    
    const submitButton = document.querySelector(".gumb"); // or document.getElementById("dodaj") if it's a submit button

   
    submitButton.parentNode.insertBefore(newMember, submitButton);
});
