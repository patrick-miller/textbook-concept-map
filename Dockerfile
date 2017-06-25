FROM jupyter/datascience-notebook:latest

EXPOSE 8888

RUN pip3 install pdfminer.six
RUN pip3 install spacy

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--NotebookApp.token=''"]
