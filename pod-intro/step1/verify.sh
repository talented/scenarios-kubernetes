#!/bin/bash

# if $(kubectl get pod my-first-pod -o json | jq '.metadata.name') == 'my-first-pod'; then exit 1; fi

# kubectl get pods -o=name --field-selector=status.phase=Running == 'pod/my-first-pod';

# $(kubectl get pods -o=name --field-selector=status.phase=Running --no-headers -o custom-columns=":metadata.name")

# kubectl get pods -o jsonpath={..metadata.name}

if [ "$(kubectl get pods -o=name --field-selector=status.phase=Running --no-headers -o custom-columns=":metadata.name")" == "my-first-pod" ]; then exit 0;else exit 1;fi
# kubectl get pod my-first-pod
