ARG BUILD_FROM
FROM $BUILD_FROM

EXPOSE 27015

WORKDIR /opt
RUN apk add git
RUN git clone https://github.com/velbus/python-velbustcp.git

WORKDIR /opt/python-velbustcp
COPY settings.json .
RUN pip install -r requirements.txt

# Copy run script
WORKDIR /opt
COPY provision.sh /
RUN chmod a+x /provision.sh

CMD [ "/provision.sh" ]
