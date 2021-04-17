'use strict'
/* Education page
    list
*/
let listGroupItem = document.querySelectorAll('.list-group-item'),
    formControl = document.querySelector('.form-control'),
    listGroup = document.querySelector('.list-group'),
    wrapp = document.querySelector('.wrapp'),
    list = document.querySelector('.list'),
    list_listGroup = document.querySelector('.list-ul>.list-group');

let listArr = new Array();

wrapp.addEventListener('click',  function(event) {
    let target = event.target;
    if(target != formControl && target != listGroup)
        if(listGroup.classList.contains('list-group_active'))
            listGroup.classList.remove('list-group_active');

});

// formControl.addEventListener('click', function(event) {
//     listGroup.classList.toggle('list-group_active');
// });

for(let i = 0; i < listGroupItem.length; i++) {
    listGroupItem[i].addEventListener('click', function(event) {
        let target = event.target,
        textListGroupItem = target.innerHTML;

        list_listGroup.insertAdjacentHTML('beforeend', 
        `<li class="list-group-item d-flex justify-content-between align-items-center">
        ${textListGroupItem}
        <span class="badge">-</span>
        </li>`);
    });
}

