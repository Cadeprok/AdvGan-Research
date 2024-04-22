# Importing Python Image
FROM python:3.6.5 


# Imports Torch, Torchvision, Numpy, Pandas, and Pillow
FROM milalaranjeira/torchvision

# Imports tensorflow
FROM tensorflow/tensorflow

FROM rocker/cuda

FROM pytorch/pytorch:latest


RUN apt-get update && apt-get install -y \
    libcairo2-dev \
    pkg-config


# General Work Directory
# WORKDIR /user/app/src
WORKDIR /app

# Copying all Python Scripts to WORKDIR
COPY main.py ./
COPY models.py ./
COPY view_npy.py ./
COPY custom_data.py ./
COPY advGAN.py ./
COPY requirements.txt ./

#COPY ./requirements.txt ./
# Install PIP Libraries
# RUN chmod +rw requirements.txt
# RUN pip install -r requirements.txt

# RUN pip install --upgrade pip
#RUN pip install model
# RUN pip install matplotlib==3.1.1


RUN pip uninstall certifi -y

RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt


RUN pip instsll certifi
# RUN pip freeze > requirements.txt
# RUN pip install -r requirements.txt

# Start Training
CMD ["python","main.py"]