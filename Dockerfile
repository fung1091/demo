FROM python:3.6
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/fung1091/assignment/tree/master/data602/assignment2.git usr/src/app/assignment2
EXPOSE 5000
CMD [ "python", "/usr/src/app/assignment2/app.py" ]