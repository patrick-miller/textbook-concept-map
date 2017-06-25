# README

### Install the docker image
docker build --no-cache -t tcm .

### Run a Jupyter notebook in the Docker image
docker run -d -p 8888:8888 --name tcm \
  -v /tcm:/tcm -w /tcm tcm