FROM alpine:3.10.3

LABEL maintainer.name="Munis Isazade" \
      maintainer.email="munisisazade@gmail.com"

WORKDIR /code

COPY . .

RUN apk update --no-cache \
    && apk upgrade --no-cache \
    && apk add --no-cache python3

EXPOSE 8154 

CMD ["python3","-m","http.server","8154"]
