# postgresql-extension

  env vars:

    -e POSTGRESQL_USER=coffeeshopadmin
    -e POSTGRESQL_DATABASE=coffeeshopdb
    -e POSTGRESQL_PASSWORD=redhat21
    -e POSTGRESQL_ADMIN_PASSWORD=postgres

## Build and push using tekton

    oc create -f tekton/source-pvc.yml
    oc apply -f tekton/s2i-task.yml
    oc apply -f tekton/postgresql-pipeline.yml
