FROM python:3.10-slim

# установить рабочий каталог
WORKDIR /code

#установить зависимости
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#скопировать проект
COPY . .

#Запускать интерпретатор python по умолчанию
ENTRYPOINT ["sh", "entrypoint.sh"]

