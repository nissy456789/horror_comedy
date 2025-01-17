document.addEventListener("turbo:load", function () {
    const menuButton = document.getElementById("menuButton");
    const dropdownMenu = document.getElementById("dropdownMenu");
  
    if (menuButton && dropdownMenu) {
      // メニューボタンをクリックで開閉
      menuButton.addEventListener("click", function (event) {
        dropdownMenu.classList.toggle("hidden");
        event.stopPropagation();
      });
  
      // 他の場所をクリックしたら閉じる
      document.addEventListener("click", function () {
        dropdownMenu.classList.add("hidden");
      });
  
      // メニュー内をクリックしても閉じないようにする
      dropdownMenu.addEventListener("click", function (event) {
        event.stopPropagation();
      });
    }
  });
  