FROM python:3.11

# Установите рабочую директорию
WORKDIR /app

# Копируйте файл с зависимостями в контейнер
COPY requirements.txt .

# Установите зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируйте остальные файлы приложения
COPY . .

# Откройте порт 8080
EXPOSE 8080

# Укажите команду для запуска приложения
CMD ["python", "app.py"]
