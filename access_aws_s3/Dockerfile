FROM ubuntu
RUN apt-get update
RUN apt-get install awscli -y
ARG key_id=AKIA26URHL7W7YPF5EDO
ARG access_key=Lpgk18NCBLpIiVc2hHZlp2CFFPkqTBxTpuGDAIo+
ENV env_id $key_id
ENV env_key $access_key
RUN mkdir /root/.aws
RUN echo [default] > /root/.aws/config
RUN echo "region = us-east-2"  >> /root/.aws/config
RUN echo [default] > /root/.aws/credentials
RUN echo "aws_access_key_id = $env_id "  >> /root/.aws/credentials
RUN echo "aws_secret_access_key = $env_key "  >> /root/.aws/credentials
CMD ["sh"]
