#!/usr/bin/env bash

if [ -r "setenv.sh" ]; then
  . "setenv.sh"
fi

export OTEL_EXPORTER_OTLP_ENDPOINT="http://localhost:4317"
export  OTEL_RESOURCE_ATTRIBUTES="attr1=val1,attr2=val2"
./mvnw -Dotel.resource.attributes="key1=val1,key2=val2" -DargLine="-Dotel.resource.attributes=key3=val3" -X verify
