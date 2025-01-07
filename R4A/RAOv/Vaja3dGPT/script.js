// Inicializacija opravil
let tasks = JSON.parse(localStorage.getItem('tasks')) || [];

// Funkcija za prikaz opravkov
function renderTasks() {
    const taskList = document.getElementById('task-list');
    taskList.innerHTML = '';

    tasks.forEach(task => {
        const taskElement = document.createElement('div');
        taskElement.classList.add('task', task.priority);

        // Preveri, ali je rok pretekel
        const dueDate = new Date(task.dueDate);
        const today = new Date();
        const daysRemaining = Math.ceil((dueDate - today) / (1000 * 3600 * 24));

        if (daysRemaining < 0) {
            taskElement.classList.add('past-due');
        }

        taskElement.innerHTML = `
            <h3>${task.title}</h3>
            <p>${task.description}</p>
            <p>Rok: ${task.dueDate} (preostali dnevi: ${daysRemaining})</p>
            <button onclick="deleteTask(${task.id})">Izbriši</button>
        `;

        taskList.appendChild(taskElement);
    });

    updateStats();
}

// Funkcija za izbris opravka
function deleteTask(id) {
    tasks = tasks.filter(task => task.id !== id);
    localStorage.setItem('tasks', JSON.stringify(tasks));
    renderTasks();
}

// Funkcija za posodabljanje statistike
function updateStats() {
    const totalTasks = tasks.length;
    const completedTasks = tasks.filter(task => new Date(task.dueDate) < new Date()).length;
    const completionRate = totalTasks === 0 ? 0 : (completedTasks / totalTasks) * 100;

    const stats = document.getElementById('stats');
    stats.innerHTML = `Opravljeni opravki: ${completedTasks} / ${totalTasks} (${completionRate.toFixed(2)}%)`;
}

// Funkcija za dodajanje opravka
document.getElementById('task-form').addEventListener('submit', function (e) {
    e.preventDefault();

    const title = document.getElementById('title').value;
    const description = document.getElementById('description').value;
    const priority = document.getElementById('priority').value;
    const dueDateInput = document.getElementById('due-date').value;

    // Če ni roka vnešenega, nastavi privzeto 7 dni od danes
    let dueDate;
    if (dueDateInput) {
        dueDate = new Date(dueDateInput);
    } else {
        dueDate = new Date();
        dueDate.setDate(dueDate.getDate() + 7);  // Privzeto 7 dni od danes
    }

    const newTask = {
        id: Date.now(),
        title,
        description,
        priority,
        dueDate: dueDate.toISOString().split('T')[0] // ISO format (yyyy-mm-dd)
    };

    tasks.push(newTask);
    localStorage.setItem('tasks', JSON.stringify(tasks));
    renderTasks();

    // Ponastavi obrazec
    document.getElementById('task-form').reset();
});

// Prvič nalaganje opravil
renderTasks();
