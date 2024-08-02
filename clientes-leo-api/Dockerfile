FROM python:3 

# Imagem padrão do Python
ENV PYTHONDONTWRITEBYTECODE=1 
# Melhorar a performance do Python
ENV PYTHONUNBUFFERED=1
# Jogar todas as saídas do Python no console

WORKDIR /home/ubuntu/tcc/
COPY . /home/ubuntu/tcc/

RUN pip install -r requirements.txt

# Faz a substituição do Allowed Hosts, por Allowed Hosts com o asterisco dentro dos colchetes no arquivo settings.py
RUN sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS= \['*'\]/" setup/settings.py
RUN python /home/ubuntu/tcc/manage.py migrate
RUN python /home/ubuntu/tcc/manage.py loaddata clientes.json

ENTRYPOINT python /home/ubuntu/tcc/manage.py runserver 0.0.0.0:8000