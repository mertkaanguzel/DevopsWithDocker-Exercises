# REPO = "$(1)" | cut -d "/" -f 2

REPO=$(echo $1 | cut -d "/" -f 2)


echo $REPO

git clone https://github.com/$1 $(pwd)/$REPO

docker build ./$REPO -t $REPO

docker login

docker tag $REPO $2

docker push $2
