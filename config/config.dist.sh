# ONLY USE CONFIGURATION FOR PRODUCTION HERE.
# THIS FILE IS ONLY LODED DURING 'manuel prod' AND 'manuel deploy'
# ANY VALUES PRESENT HERE CAN BE OVERRIDEN IN ./config.sh


# Production specific variables
## Host of the production database
set-var PROD_HOST "demo.geoportal.prod"
## Username used to connect to production server with ssh
set-var PROD_USER "geo_prod"
## Where are the git repos on the production server. These repos must no be bare repos, ie they
## contain the generated content.
set-var PROD_GIT_REPOS_LOCATION "~geo_prod/git"
## Used in 'manuel init-prod-repo PORTAL' to initialize the git repos in prod (1st commit and
## clone in manuel init-prod-repo PORTAL).
set-var PROD_BARE_GIT_REPOS_LOCATION "https://git.geoportal.prod/git/"
## Name of the branch of geo-front3 that must be deployed in production
set-var PROD_DEPLOY_BRANCH "devel"
## Where to copy generated MapFish Print applications (directory containing config.yaml, the
## templates and the images).
set-var MFP_APP_FOLDER "/srv/tomcat/webapps/print/print-apps/"


# Rsync options
set-var BWL 84000
set-var DATA_SRC "/var/geoportal/data/"
set-var DATA_DEST "demo.geoportal.prod:/var/geoportal/data/"
# To execute rsync commands on a remote shell, uncomment the line below
# Never used set-var
#export RSYNC_RSH="ssh -l ${PROD_USER}"


# Databsase
## In db tasks, if no database is precised in the command, this one will be used.
set-var DEFAULT_DB_NAME "geo_dev"
## In db-dev2prod and db-prod-patch, if no database is precised, this one will be used.
set-var DEFAULT_DB_PROD_NAME "geo_prod"
## In db tasks, if no host is precised, this one will be used.
set-var DEFAULT_DB_HOST "localhost"
## IN db-dump, db-dump-roles and db-ddl-track, if no host is defined, this one will be used.
set-var DEFAULT_DB_SOURCE_HOST "db.geoportal.local"
## In db-prod-patch and db-dev2prod, if no host is precised, this one will be used.
set-var DEFAULT_DB_PROD_HOST "db.geoportal.prod"
## In which file to dump the database by default.
set-var DEFAULT_DB_DUMP_FILE "/var/tmp/geo_dev_full.backup"
## In db-dev2prod, where to dump the data of the API3 schema in order to restaure it after the
## database update.
set-var DEFAULT_DB_API_DUMP_FILE "/var/tmp/geo_prod_api3.backup"
## In db-ddl-track, in which file to dump the schema of the database.
set-var DEFAULT_DB_SCHEMA_DUMP_FILE "/var/tmp/geo_dev_schema.sql"
## In db-ddl-track, in which git repo to commit the modifications.
set-var DEFAULT_DB_REPO "~geo_dev/git/geo-db"
## PostgresQL role to use for superuser operation.
set-var DEFAULT_DB_SUPER_USER "postgres"
## PostgresQL role to which the database will be given on restaure.
set-var DEFAULT_DB_OWNER "geo_dba"


# Misc
## In 'manuel features-reload' which URL must be requested to reload the features.
set-var RELOAD_FEATURES_URL "http://demo.geoportal.local/api/features_reload"

