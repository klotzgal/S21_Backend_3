# Запуск проекта

## Перед запуском

- Понадобится docker compose
- Создать файл с переменными окружения на подобии example.env в папке `src/app`
- Проверить, что нужные порты свободны
- Для проверки https отредактировать локальное DNS хранилище по примеру из `src/ssl/ssl.md`, добавив доменное имя `klotzgal.shop.ru` для localhost ipv4 и ipv6

## Установка переменных окружения

Находясь в `src` установить переменные окружения

```bash
set -a && . app/./example.env && set +a
```

## Запустить docker compose

```bash
docker compose -f docker-compose.yaml up -d
```
