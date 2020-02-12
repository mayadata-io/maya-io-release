#!/bin/bash
set -ex
ORG="mayadata"
REPO="dmaas"
TAG_NAME="$1"
OLDTAG="$2"

if [[ $TAG_NAME =~ ^[0-9].[0-9].[0-9]-(.*)$ ]];then  #tag for maya io master
   export IMAGE="${ORG}/${REPO}:${TAG_NAME}-ee"
elif [[ $TAG_NAME =~ ^[0-9].[0-9].[0-9]$ ]]; then
   export IMAGE="${ORG}/${REPO}:${TAG_NAME}-ee"
else
 echo "not building"
fi
docker tag "${OLDTAG}" "${IMAGE}"
docker push "${IMAGE}"
