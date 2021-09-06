//navbar 
[].slice.call(document.querySelectorAll('.dropdown .nav-link')).forEach(function(el){
    el.addEventListener('click', onClick, false);
  });
  
  function onClick(e){
    e.preventDefault();
    var el = this.parentNode;
    el.classList.contains('show-submenu') ? hideSubMenu(el) : showSubMenu(el);
  }
  
  function showSubMenu(el){
    el.classList.add('show-submenu');
    document.addEventListener('click', function onDocClick(e){
        e.preventDefault();
        if(el.contains(e.target)){
            return;
        }
        document.removeEventListener('click', onDocClick);
        hideSubMenu(el);
    });
  }
  
  function hideSubMenu(el){
    el.classList.remove('show-submenu');
  }
  
  
  const hamburger = document.querySelector(".hamburger");
  const navMenu = document.querySelector(".nav-items");
  
  hamburger.addEventListener("click", mobileMenu);
  
  function mobileMenu() {
      hamburger.classList.toggle("active");
      navMenu.classList.toggle("active");
  }
  
  const navLink = document.querySelectorAll(".nav-link-close");
  const submenuLink = document.querySelectorAll(".submenu-link");
  
  navLink.forEach(n => n.addEventListener("click", closeMenu));
  submenuLink.forEach(n => n.addEventListener("click", closeMenu));
  
  function closeMenu() {
      hamburger.classList.remove("active");
      navMenu.classList.remove("active");
  }
  
  
 
  //slider
  let mainPosts = document.querySelectorAll(".main-post");
  let posts = document.querySelectorAll(".post");
  
  let i = 0;
  let postIndex = 0;
  let currentPost = posts[postIndex];
  let currentMainPost = mainPosts[postIndex];
  
  let progressInterval = setInterval(progress, 100); // 180
  
  function progress() {
    if (i === 100) {
      i = -5;
      // reset progress bar
      currentPost.querySelector(".progress-bar__fill").style.width = 0;
      document.querySelector(
        ".progress-bar--primary .progress-bar__fill"
      ).style.width = 0;
      currentPost.classList.remove("post--active");
  
      postIndex++;
  
      currentMainPost.classList.add("main-post--not-active");
      currentMainPost.classList.remove("main-post--active");
  
      // reset postIndex to loop over the slides again
      if (postIndex === posts.length) {
        postIndex = 0;
      }
  
      currentPost = posts[postIndex];
      currentMainPost = mainPosts[postIndex];
    } else {
      i++;
      currentPost.querySelector(".progress-bar__fill").style.width = `${i}%`;
      document.querySelector(
        ".progress-bar--primary .progress-bar__fill"
      ).style.width = `${i}%`;
      currentPost.classList.add("post--active");
  
      currentMainPost.classList.add("main-post--active");
      currentMainPost.classList.remove("main-post--not-active");
    }
  }