# Настройка ssl

## DNS для localhost

Добавил в `/etc/hosts` доменное имя `klotzgal.shop.ru` для ipv4 и ipv6

![/etc/hosts](../../misc/images/etc_hosts.png)

## Выпуск сертификата

Создание приватного ключа (rsa), создание запроса на подпись и подпись самим собой.

```bash
openssl req -newkey rsa:2048 -nodes -keyout shop.key -x509 -days 365 -out shop.crt 
```

Главное указать CN

![CN](../../misc/images/gen_certs.png)

## Конфиг nginx

Примаунтил папку с сертами и добавил путь до них в конфиг. Добавил проксирование с 80 на 443 порт. Для теста проксирования прокинул и 80 и 443 порты.

![nginx.conf](../../misc/images/nginx_ssl.png)
