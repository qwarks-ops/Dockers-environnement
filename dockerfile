FROM python:3.9-slim

LABEL author="Qwarks"
LABEL version=v1.0
LABEL description="Jupyter laboratory, python 3.9"
LABEL date_created="2023-10-03"


RUN mkdir /notebooks
WORKDIR /notebooks


COPY requirements.txt ./

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888
ENTRYPOINT ["jupyter-lab","--ip=0.0.0.0","--allow-root"]
