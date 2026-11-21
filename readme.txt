docker running command:
docker build -t foxbat-dev .
docker run --rm -it -v "$PWD":/src foxbat-dev bash