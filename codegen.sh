#!/bin/bash

VERSION="v5.3.1"

docker run -i --rm -v $(pwd):/work -w /work --entrypoint /bin/bash openapitools/openapi-generator-cli:$VERSION <<__EOS__
curl -s https://raw.githubusercontent.com/LINBIT/linstor-server/v1.4.2/docs/rest_v1_openapi.yaml |
sed -e 's/- Controller/- CONTROLLER/g' \
    -e 's/- Satellite/- SATELLITE/g' \
    -e 's/- Combined/- COMBINED/g' \
    -e 's/- Auxiliary/- AUXILIARY/g' \
    -e 's/- Plain/- PLAIN/g' \
> /tmp/openapi.yaml

docker-entrypoint.sh generate \
  -i /tmp/openapi.yaml \
  -g ruby -t generator/template -o . -c generator/openapi-generator.yaml --skip-validate-spec

for i in generator/custom/*.rb
do
  cp -v "\$i" lib/ruby-linstor-client/models
done
__EOS__
