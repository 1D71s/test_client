# Используем более новую версию Node.js
FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json (если есть)
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем все остальные файлы
COPY . .

# Строим проект
RUN npm run build

# Экспонируем порт
EXPOSE 7000

# Запуск приложения
CMD ["npm", "start"]
