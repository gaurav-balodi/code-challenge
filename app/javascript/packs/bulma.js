// The following code is based off a toggle menu by @Bradcomp
// source: https://gist.github.com/Bradcomp/a9ef2ef322a8e8017443b626208999c1
(function() {
    var button = document.querySelector('.delete');
    if(button){
        var notificationContainer = document.querySelector('#'+button.dataset.target);
        button.addEventListener('click', function() {
            notificationContainer.classList.toggle('is-hidden');
        });
    }
})();