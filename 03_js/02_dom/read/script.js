function showFirstNews() {
    let newsList = document.getElementById("news-list");
    console.log(newsList.getElementsByTagName("li")[0].innerHTML);
    newsList.forEach(elem => console.log(elem.innerHTML));
    //lub
    //console.log(newsList.getElementsByTagName("li").item(0).innerHTML);
}
showFirstNews();