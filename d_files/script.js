'use strict'
/* Education page
    list
*/
let chooiceLink = document.querySelectorAll('.choice__link'),
    formControl = document.querySelector('.form-control'),
    listGroup = document.querySelector('.list-group'),
    wrapp = document.querySelector('.wrapp'),
    list = document.querySelector('.list'),
    list_listGroup = document.querySelector('.list-ul>.list-group'),
    listBadge = document.querySelectorAll('.list__badge');

let choiceLinkArr = new Array();

for(let i = 0; i < chooiceLink.length; i++) {
    choiceLinkArr.push(chooiceLink[i].innerHTML);
}

wrapp.addEventListener('click',  function(event) {
    let target = event.target;
    if(target != formControl && target != listGroup)
        if(listGroup.classList.contains('list-group_active'))
            listGroup.classList.remove('list-group_active');

});

formControl.addEventListener('click', function(event) {
    listGroup.classList.toggle('list-group_active');
});

for(let i = 0; i < chooiceLink.length; i++) {
    chooiceLink[i].addEventListener('click', function(event) {
        console.log('sfdf');
        let target = event.target,
        textListGroupItem = target.innerHTML;

        list_listGroup.insertAdjacentHTML('beforeend', 
        `<li class="list-group-item d-flex justify-content-between align-items-center">
        ${textListGroupItem}
        <span class="badge">&#215;</span>
        </li>`);
    });
}
for(let i = 0; i < listBadge.length; i++) {
    listBadge[i].addEventListener('click', function() {
    });
}