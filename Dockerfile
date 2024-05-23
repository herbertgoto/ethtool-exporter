FROM python:alpine3.20

RUN apk add --no-cache ethtool

COPY requirements.txt /
COPY ethtool-exporter.py /

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r /requirements.txt \
    && ln -s /usr/sbin/ethtool /sbin/ethtool

EXPOSE 9417

CMD ["python3", "/ethtool-exporter.py", "-L", "0.0.0.0","-p","9417"]