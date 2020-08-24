#!/bin/bash
sed "s/tagVersion/$1/g"  /var/lib/jenkins/workspace/pipeline-k8s/ingress/nodeapp-v2.yml >  /var/lib/jenkins/workspace/pipeline-k8s/ingress/nodeapp-v2-tag.yml
