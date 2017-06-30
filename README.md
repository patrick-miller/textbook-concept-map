# README

## Install the docker image
docker build -t tcm .

## Run a Jupyter notebook in the Docker image
docker run -d -p 8888:8888 --name tcm \
  -v /tcm:/tcm -w /tcm tcm
  
## Run a DBpedia Spotlight server
docker run -i -p 2222:80 dbpedia/spotlight-english spotlight.sh

### Test out the Spotlight server
```
curl http://192.168.99.101:2222/rest/annotate \
  --data-urlencode "text=President Obama called Wednesday on Congress to extend a tax break
  for students included in last year's economic stimulus package, arguing
  that the policy provides more generous assistance." \
  --data "confidence=0.35" \
  -H "Accept: application/json"
```