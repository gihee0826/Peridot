
const login = document.querySelector('.loginbtn');
const hide1 = document.querySelector('.login_hide');
                
        login.addEventListener('click' ,() => {
            hide1.classList.toggle('active');
        });

const join = document.querySelector('.joinbtn');
const hide2 = document.querySelector('.join_hide');
                
        join.addEventListener('click' ,() => {
            hide2.classList.toggle('active');
        });