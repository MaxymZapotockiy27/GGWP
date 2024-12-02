FROM node:16-alpine

# Встановлення Docker та інших залежностей
RUN apk update && apk add --no-cache \
    docker \
    curl \
    git \
    bash

# Додати користувача jenkins до групи docker
RUN addgroup -S docker && adduser -S user -G docker

# Налаштування робочої директорії
WORKDIR /app

# Копіювання коду в контейнер
COPY . .

# Встановлення пакунків
RUN npm install

# Відкриття порту, на якому працює додаток
EXPOSE 3000

# Запуск додатку (за бажанням)
CMD ["npm", "start"]
