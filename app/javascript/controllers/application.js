import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener('DOMContentLoaded', function() {
    const bookmarkButtons = document.querySelectorAll('[data-method="post"], [data-method="delete"]');
    
    bookmarkButtons.forEach(button => {
      button.addEventListener('click', function(event) {
        event.preventDefault(); // デフォルトの挙動を防ぐ
  
        const url = this.href; // リンクのURLを取得
        const method = this.getAttribute('data-method') || 'GET'; // メソッドを取得（デフォルトはGET）
  
        fetch(url, {
          method: method,
          headers: {
            'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
          }
        })
        .then(response => {
          if (response.ok) {
            // 成功した場合の処理（例：ページをリロードする）
            location.reload();
          } else {
            // エラーハンドリング
            console.error('Error:', response);
          }
        });
      });
    });
  });