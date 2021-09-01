# postgresql-extension



## Build with s2i and deploy it

    oc new-app postgresql:9.6~https://github.com/GuilhermeCamposo/postgresql-extension.git --name coffeeshopdb --context-dir scripts/ \
    -e POSTGRESQL_USER=coffeeshopadmin -e POSTGRESQL_DATABASE=coffeeshopdb -e POSTGRESQL_PASSWORD=redhat21

## Build and push using tekton

    oc create -f tekton/source-pvc.yml
    oc create -f tekton/s2i-task.yml
    oc create -f tekton/postgresql-pipeline.yml
