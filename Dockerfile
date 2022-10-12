FROM python:3.7.12-slim
 
ENV PROJECT_NAME=my_first_project
 
COPY $PROJECT_NAME/src/ /tmp/$PROJECT_NAME/src/
COPY requirements.txt /tmp/$PROJECT_NAME/
 
WORKDIR /tmp
 
RUN pip install -r $PROJECT_NAME/requirements.txt
 
# Change the "my_first_project" to the project name and add the path where the training code is located
ENTRYPOINT ["python",  "my_first_project/src/models/train_model.py"]
