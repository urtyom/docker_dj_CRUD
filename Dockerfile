FROM python:3.12-alpine
#RUN apk add --no-cache gcc musl-dev linux-headers
WORKDIR src

COPY ./requirements.txt .
RUN pip install -r requirements.txt

ENV MY_ENV=10-02
EXPOSE 5050
COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:5050"]