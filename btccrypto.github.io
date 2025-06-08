btccrypto.github.io/
└── index.html ✅
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>BTC Kripta</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap" rel="stylesheet" />
  <style>
    body {
      font-family: 'Inter', sans-serif;
      margin: 0;
      background: #0f0f0f;
      color: #fff;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 2rem;
    }
    .container {
      max-width: 600px;
      text-align: center;
      background: #1a1a1a;
      padding: 2rem;
      border-radius: 16px;
      box-shadow: 0 0 20px rgba(0,0,0,0.5);
    }
    h1 {
      color: #f7931a;
      font-size: 2.5rem;
    }
    .address-box {
      background: #333;
      padding: 1rem;
      border-radius: 10px;
      word-wrap: break-word;
      margin: 1rem 0;
    }
    input {
      width: 100%;
      padding: 0.75rem;
      margin-top: 0.5rem;
      border-radius: 8px;
      border: none;
      font-size: 1rem;
    }
    button {
      margin-top: 1rem;
      background: #f7931a;
      color: #000;
      padding: 0.75rem 2rem;
      font-weight: bold;
      border: none;
      border-radius: 8px;
      cursor: pointer;
    }
    .footer {
      margin-top: 2rem;
      font-size: 0.9rem;
      color: #888;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>BTC Kripta</h1>
    <p>Покупайте и пополняйте BTC быстро и безопасно</p>
    <h3>Адрес для пополнения (ERC-20 / ETH):</h3>
    <div class="address-box">0x314637238fd0e9661ed5b5864b947c9f3fb8f15c</div>

    <h3>Подтвердите перевод:</h3>
    <form id="confirmForm">
      <label for="tx">Хеш транзакции (TX hash):</label>
      <input type="text" id="tx" name="tx" placeholder="Введите хеш..." required />

      <label for="contact">Ваш Telegram или Email:</label>
      <input type="text" id="contact" name="contact" placeholder="@yourusername или email" />

      <button type="submit">Отправить</button>
    </form>

    <div id="message" style="margin-top:1rem;color:#f7931a;font-weight:bold;"></div>

    <div class="footer">© 2025 BTC Kripta. Связь: @btcadmin</div>
  </div>

  <script>
    const form = document.getElementById('confirmForm');
    const messageDiv = document.getElementById('message');

    form.addEventListener('submit', function(e) {
      e.preventDefault();

      const tx = form.tx.value.trim();
      const contact = form.contact.value.trim();

      // Проверка хеша: 0x + 64 hex символа
      const txRegex = /^0x[a-fA-F0-9]{64}$/;
      if (!txRegex.test(tx)) {
        messageDiv.textContent = 'Введите корректный хеш транзакции (0x + 64 шестнадцатеричных символа).';
        return;
      }

      messageDiv.textContent = 'Спасибо! Данные успешно отправлены.';
      form.reset();

      // Тут можно добавить реальную отправку на сервер, если будет API
    });
  </script>
</body>
</html>
