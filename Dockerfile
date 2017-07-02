FROM jupyter/datascience-notebook:latest

EXPOSE 8888

RUN pip3 install pdfminer.six
RUN pip3 install spacy
RUN python -m spacy download en
# RUN python -m spacy download en_core_web_md
RUN pip3 install pyspotlight

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--NotebookApp.token=''"]
