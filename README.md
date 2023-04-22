## End to End ML Project

### Created a enviornment

```
conda create -p venv python==3.8

```

### Install all necessary lib

```
pip install -r requirements.txt
```
#### AWS Beanstalk file ###
```
create .ebextensions inside that create python.config file and enter below command.
option_settings:
"aws:elasticbeanstalk:container:python":
    WSGIPath: application:application
change app.py to application.py

````
