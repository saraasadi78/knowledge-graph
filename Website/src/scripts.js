function displayPicture() {
    const pictureList = document.getElementById("picture-list");
    const picture = document.getElementById("picture");
    const selectedValue = pictureList.value;
    let pic = "src/img/graphs/";
    if (selectedValue === "All Events") {
        pic += "all.svg";
    } else if (selectedValue === "Event1") {
        pic += "1.svg";
    } else if (selectedValue === "Event2") {
        pic += "2.svg";
    } else if (selectedValue === "Event3") {
        pic += "3.svg";
    } else if (selectedValue === "Event4") {
        pic += "4.svg";
    } else if (selectedValue === "Event5") {
        pic += "5.svg";
    }
    picture.src = pic;
}