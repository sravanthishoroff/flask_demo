FROM python:3.8

WORKDIR /myWorkDir
COPY . .

RUN pip install -r requirements.txt

# COPY requirements.txt .
# COPY ./src/ /myWorkDir

ENTRYPOINT [ "python" ]

CMD ["main.py"]

