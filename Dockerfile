
# Importing Python Image
FROM python:3.6.5
# General Work Directory
WORKDIR /user/app/src

# Copying all Python Scripts to WORKDIR
COPY main.py ./
COPY models.py ./
COPY view_npy.py ./
COPY custom_data.py ./
COPY advGAN.py ./

# RUN pip install numpy

COPY ./requirements.txt ./

# Install PIP Libraries
RUN pip freeze > requirements.txt
# RUN pip install -r requirements.txt

# Start Training
CMD ["python","main.py"]

# docker build -t gan .
# docker run gan


# docker run -t --rm p 8080:8080 gan