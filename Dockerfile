FROM python:3.8.5
WORKDIR /code
COPY . /code/
RUN pip install jupyterlab
EXPOSE 8890
CMD python --version && jupyter lab --port=8890 --no-browser --ip=0.0.0.0 --allow-root