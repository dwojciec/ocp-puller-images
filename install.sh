#!/bin/bash
oc new-project k8s-image-puller
oc process -f serviceaccount.yaml | oc apply -f -
oc process -f configmap.yaml | oc apply -f -
oc process -f app.yaml | oc apply -f -
oc get pod
