FROM python:3 

# Melhorar a performance do Python e ajudar a resolver bugs
ENV PYTHONDONTWRITEBYTECODE=1 
ENV PYTHONUNBUFFERED=1

WORKDIR /home/ubuntu/tcc/
COPY . /home/ubuntu/tcc/

RUN pip install -r requirements.txt

# Faz a substituição do Allowed Hosts, por Allowed Hosts com o asterisco dentro dos colchetes no arquivo settings.py
RUN sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS= \['*'\]/" setup/settings.py
RUN python /home/ubuntu/tcc/manage.py migrate 
RUN python /home/ubuntu/tcc/manage.py loaddata clientes.json

ENTRYPOINT python /home/ubuntu/tcc/manage.py runserver 0.0.0.0:8000
# Expõe a porta 8000
EXPOSE 8000