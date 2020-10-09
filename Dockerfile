FROM python:3.6

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8888

CMD [ "jupyter", "notebook", "--ip='*'", "--port=8888", "--NotebookApp.token=''", "--NotebookApp.password=''", "--allow-root" ]

