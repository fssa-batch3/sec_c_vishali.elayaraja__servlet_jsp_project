// Define a variable to store the selected department
let selectedDepartment;

// Add an event listener for the "Sort" button
const sortButton = document.getElementById("sort_button");
sortButton.addEventListener("click", () => {
    selectedDepartment = document.getElementById("selection").value.trim();
    if (selectedDepartment !== "") {
        sortAndDisplayByDepartment();
    } else {
        alert("Please select a department to sort by.");
    }
});

function sortAndDisplayByDepartment() {
    // Get all rows in the table body
    const tableBody = document.querySelector(".table__body");
    const rows = tableBody.querySelectorAll("tr");

    // Loop through the rows and hide/show based on selected department
    rows.forEach((row) => {
        const departmentCell = row.querySelector('td:nth-child(7)');
        const department = departmentCell.innerText.trim();

        if (selectedDepartment === department) {
            row.style.display = "table-row";
        } else {
            row.style.display = "none";
        }
    });
}

// Add an event listener for resetting the table
const restartButton = document.getElementById("restart_button");
restartButton.addEventListener("click", () => {
    // Reset the selected department to empty
    selectedDepartment = "";
    
    // Show all rows
    const tableBody = document.querySelector(".table__body");
    const rows = tableBody.querySelectorAll("tr");
    rows.forEach((row) => {
        row.style.display = "table-row";
    });
});
