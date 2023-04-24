FROM python:3.12-rc-slim-buster 
WORKDIR /app
COPY . /app

# RUN apt-get update && \
#     apt-get install -y curl && \
#     curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
#     unzip awscliv2.zip && \
#     ./aws/install && \
#     rm -rf awscliv2.zip aws

# RUN pip install awscli
RUN apt-get update && pip install -r requirements.txt

CMD python app.py