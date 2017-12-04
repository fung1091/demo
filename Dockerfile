FROM python:3.6
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/fung1091/demo.git usr/src/app/demo
EXPOSE 5000
CMD [ "python", "/usr/src/app/demo/app.py" ]
