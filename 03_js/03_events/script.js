function registerEnableButton() {
    let enableButton = document.getElementById("enable-button");
    enableButton.onclick = function() {
        let counterButton = document.getElementById('counter-button');
        counterButton.addEventListener("click", incrementCounter);
    }
}

function registerDisableButton() {
    let disableButton = document.getElementById("disable-button");
    disableButton.onclick = function() {
        let counterButton = document.getElementById('counter-button');
        counterButton.removeEventListener("click", incrementCounter);
    }
}

function incrementCounter() {
    document.getElementById('counter').innerHTML++;
}

registerEnableButton();
registerDisableButton();