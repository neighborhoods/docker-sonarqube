FROM sonarqube:7.1

COPY extensions.txt .

RUN wget -i extensions.txt \
    && mv *.jar $SONARQUBE_HOME/extensions/plugins