# Textbook Concept Map Builder

A preliminary study on constructing concept maps with prerequisite structure from textbooks. Topic recognition, extraction and disambiguation are performed with DBpedia Spotlight, and the prerequisite structure is identified through the location of the occurrence of each concept in the text. This study shows that the simple use of DBpedia is a viable method for automatically creating a concept map from a corpus of textbooks.

## Install the docker image
```docker build -t tcm .```

## Run a Jupyter notebook in the Docker image
```docker run -d -p 8888:8888 --name tcm \
  -v /tcm:/tcm -w /tcm tcm```
  
## Run a DBpedia Spotlight server
```docker run -i -p 2222:80 --name spotlight dbpedia/spotlight-english spotlight.sh```

### Test out the Spotlight server
```
curl http://192.168.99.101:2222/rest/annotate \
  --data-urlencode "text=President Obama called Wednesday on Congress to extend a tax break
  for students included in last year's economic stimulus package, arguing
  that the policy provides more generous assistance." \
  --data "confidence=0.35" \
  -H "Accept: application/json"
```

## Full concept map

`output/graph_adj_list.csv` contains the adjacency list for the full concept map
