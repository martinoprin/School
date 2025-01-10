let opravki = [];

function dodajOpravek(){

    event.preventDefault();
    const opravek = {
        naslov: document.getElementById('naslov').value,
        opis: document.getElementById('opis').value,
        rokZaDokoncanje: document.getElementById('date').value,
        prioriteta: document.getElementById('priority').value,
        opravljeno: false
    };

    opravki = JSON.parse(localStorage.getItem("tasks")) || [];
    opravki.push(opravek);

    localStorage.setItem("tasks", JSON.stringify(opravki));

    prikaziOpravek();
}

function prikaziOpravek() {
    let tasks = JSON.parse(localStorage.getItem("tasks")) || [];
    const taskList = document.getElementById("taskList");
    const procentElement = document.getElementById('procent');
    taskList.innerHTML = '';

    tasks.sort((a, b) => {
        const priorityOrder = { "visoka": 1, "srednja": 2, "nizka": 3 };
        return priorityOrder[a.prioriteta] - priorityOrder[b.prioriteta];
    });

    const today = new Date();

    tasks.forEach((task, index) => {
        const taskElement = document.createElement("div");
        taskElement.classList.add("task");

        const taskDueDate = new Date(task.rokZaDokoncanje);
        const timeDiff = taskDueDate - today;
        const daysRemaining = Math.ceil(timeDiff / (1000 * 3600 * 24));

        if (taskDueDate < today) {
            taskElement.classList.add("past-due");
        }

        if (task.opravljeno) {
            taskElement.style.borderColor = '#4CAF50';
        }

        taskElement.innerHTML = `
            <h3>Naslov: ${task.naslov}</h3>
            <p><strong>Rok:</strong> ${task.rokZaDokoncanje}</p>
            <p><strong>Prioriteta:</strong> ${task.prioriteta}</p>
            <p><strong>Preostali dnevi:</strong> ${daysRemaining}</p>
            <button class="view-details-btn">Poglej podrobnosti</button>
            <button class="delete-task-btn">Izbriši opravek</button>
            <div class="task-details" style="display: none;">
                <p><strong>Podrobnosti:</strong> ${task.opis}</p>
            </div>
        `;

        const viewDetailsBtn = taskElement.querySelector('.view-details-btn');
        viewDetailsBtn.addEventListener('click', () => {
            const taskDetails = taskElement.querySelector('.task-details');
            taskDetails.style.display = taskDetails.style.display === 'none' ? 'block' : 'none';
        });

        const deleteBtn = taskElement.querySelector('.delete-task-btn');
        
        deleteBtn.addEventListener('click', () => {
            tasks = tasks.filter((_, taskIndex) => taskIndex !== index); 
            localStorage.setItem("tasks", JSON.stringify(tasks)); 
            if (tasks.length === 0) {
                localStorage.removeItem("tasks"); 

            }
            prikaziOpravek(); 
        });

        taskElement.addEventListener('click', () => {
            if (task.opravljeno) {
                task.opravljeno = false;
                taskElement.style.borderColor = '';
            } else {
                task.opravljeno = true;
                taskElement.style.borderColor = '#4CAF50';
            }
            updateCompletionPercentage(tasks);
        });

        taskList.appendChild(taskElement);
    });

    if (tasks.length === 0) {
        procentElement.innerHTML = 'Ni opravkov.';
    } else {
        updateCompletionPercentage(tasks);
    }

    document.querySelector(".form").reset();
    setDefaultDate();
}

function updateCompletionPercentage(tasks) {
    const completedTasks = tasks.filter(task => task.opravljeno).length;
    const totalTasks = tasks.length;
    const percentage = totalTasks === 0 ? 0 : Math.round((completedTasks / totalTasks) * 100);
    document.getElementById('procent').innerHTML = `Opravljeno ${completedTasks} od ${totalTasks} opravkov ${percentage}%`;
}


function setDefaultDate() {
    let trenutniDatum = new Date();
    trenutniDatum.setDate(trenutniDatum.getDate() + 7); 
    let formatiranDatum = trenutniDatum.toISOString().split('T')[0];
    document.getElementById('date').value = formatiranDatum;
}

document.addEventListener("DOMContentLoaded", () => {
    prikaziOpravek();
});