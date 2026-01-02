FROM debian

WORKDIR /app

COPY . .

RUN apt update && apt install -y gcc && gcc main.c

CMD [ "./a.out" ]