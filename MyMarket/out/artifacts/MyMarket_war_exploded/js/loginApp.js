const forms = document.querySelector(".forms"),
    pwShowHide = document.querySelectorAll(".eye-icon"),
    links = document.querySelectorAll(".link");

const loader = document.querySelector('.loader-wrapper');
const main = document.querySelector('.main')

function init(){
    setTimeout(() => {
        loader.style.opacity = 0;
        loader.style.display = 'none';

        main.style.display = 'flex';
        setTimeout(() => (main.style.opacity = 1), 50);
    }, 2000);
}

pwShowHide.forEach(eyeIcon => {
    eyeIcon.addEventListener("click", () => {
        let pwFields = eyeIcon.parentElement.parentElement.querySelectorAll(".password");

        pwFields.forEach(password => {
            if(password.type === "password"){
                password.type = "text";
                eyeIcon.classList.replace("bx-hide", "bx-show");
                return;
            }
            password.type = "password";
            eyeIcon.classList.replace("bx-show", "bx-hide");
        })

    })
})

init();

