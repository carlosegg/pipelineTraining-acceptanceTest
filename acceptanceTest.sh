#!/bin/bash
# Mas info: http://develenv.softwaresano.com/deploymentPipeline/libtest.html y
#           http://develenv.softwaresano.com/deploymentPipeline/index.html#Smoke_Test

# import libtest
source $(dirname $(readlink -f $0))/libtest.sh

function acceptanceTestIndex(){
   httpOK "$URL_SERVER/index.html"
   return $?
}

function acceptanceTestIndex(){
   httpOK "$URL_SERVER/example.html"
   return $?
}

main $*
exit $?

##################### DEPLOYMENT TABLE ############################
#--------------+--------------------------------------------------------------
# Enviroment   | URL 
#--------------+--------------------------------------------------------------
int            | http://int-pipeline-01/pipelineTraining
qa             | http://qa-pipeline-01/pipelineTraining


