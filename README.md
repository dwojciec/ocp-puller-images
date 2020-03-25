# ocp-puller-images

Idea from this project 
https://github.com/redhat-developer/kubernetes-image-puller


## Change the configmap.yaml and include your list of images you want to prepull
in this section 
example :

```
- name: IMAGES
  value: >
      catalog-spring-boot=quay.io/mcouliba/catalog-spring-boot:3.1_debugging;
      gateway-vertx=quay.io/mcouliba/gateway-vertx:3.1_debugging;
      inventory-quarkus=quay.io/mcouliba/inventory-quarkus:3.1_debugging;
      web-nodejs=quay.io/mcouliba/web-nodejs:3.1_debugging;
```

## To install
```
oc new-project k8s-image-puller
oc process -f serviceaccount.yaml | oc apply -f -
oc process -f configmap.yaml | oc apply -f -
oc process -f app.yaml | oc apply -f -
```
or
run **install.sh** script
