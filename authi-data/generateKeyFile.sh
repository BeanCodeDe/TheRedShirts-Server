mkdir ./authi-data/token
ssh-keygen -t rsa -b 4096 -m PEM -f ./authi-data/token/jwtRS256.key
openssl rsa -in ./authi-data/token/jwtRS256.key -pubout -outform PEM -out ./authi-data/token/jwtRS256.key.pub