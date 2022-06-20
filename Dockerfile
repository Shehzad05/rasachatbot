FROM ubuntu:20.04
ENTRTPOINT []
RUN apt-get update && apt-get install -y python3 python-pip && python -m pip install --no-cache rasa==1.10.8 
ADD . /app/
RUN chmod +x /app/start_services.sh
CMD /app/start_services.sh


