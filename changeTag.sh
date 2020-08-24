#!/bin/bash
sed "s/tagVersion/$1/g"  /var/lib/jenkins/workspace/pipeline-test/ingress/helloworld-v2.yml >  /var/lib/jenkins/workspace/pipeline-test/ingress/helloworld-v2-tag.yml
