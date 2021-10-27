// list of ingredients global variables
let i = 0;

// expand column and add rest of ingredients that are needed with selected ingredients
function expand(event) {
    // might want to make it more efficient than 
    let button = document.getElementById("dyn");
    document.getElementById("dynamic").removeChild(button);
    set(10, "dynamic");
    addButton("minimize");
}

// minimize
function minimize(event) {
    let button = document.getElementById("dyn");
    document.getElementById("dynamic").removeChild(button);
    // no clue why i cant just use function set
    let list = "";
    for (i=0 ; i < 5; i++) {
        list += `<input type="checkbox" name="item${i}" id="item${i}">`;
        list += `<label for="item${i}">ingredient${i} (and number of recipes with the ingredient)</label>`;
        list += "<br>";
    }
    let parent = document.getElementById("dynamic");
    parent.innerHTML = list;
    addButton("expand");
}

// populates form with a list of some data at the start\
function set(n, p) {
    let list = "";
    let sum = n + i;
    for (i= 0; i < sum; i++) {
        list += `<input type="checkbox" name="item${i}" id="item${i}">`;
        list += `<label for="item${i}">ingredient${i} (and number of recipes with the ingredient)</label>`;
        list += "<br>";
    }
    let parent = document.getElementById(p);
    parent.innerHTML = list;
}

function addButton(purpose) {
    let button = document.createElement("button");
    button.type = "button";
    button.innerHTML = purpose;
    button.id = "dyn";
    document.getElementById("dynamic").appendChild(button);
    if (purpose === "expand") button.addEventListener("click", expand);
    else button.addEventListener("click", minimize);
}

// populates form with a list of some data at the start, when the website loads
window.addEventListener("DOMContentLoaded", function (event) {
    set(5, "dynamic");
    addButton("expand");
});