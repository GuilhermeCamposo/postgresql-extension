# postgresql-extension



## Build with s2i and deploy it

    oc new-app postgresql:9.6~https://github.com/GuilhermeCamposo/postgresql-extension.git --name coffeeshopdb --context-dir scripts/ \
    -e POSTGRESQL_USER=coffeeshopadmin -e POSTGRESQL_DATABASE=coffeeshopdb -e POSTGRESQL_PASSWORD=redhat21
