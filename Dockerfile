# Вибір базового образу
FROM alpine:latest

# Додавання простого кроку, щоб перевірити роботу контейнера
RUN echo "Hello from Jenkins Docker Agent!"
