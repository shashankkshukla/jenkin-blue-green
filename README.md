

CI/CD with Jenkins using Pipelines for kubernetes.

Prerequisite :
•	Install Jenkin latest version
•	Any Kubernetes cluster
•	Create requisite credentials in jenkin to run Pipeline like Github and docker repository access.
Process :

1.	Kops kubernetes cluster with 1 Master and 1 worker node is used for testing on AWS cloud.
2.	Execute below command on kubernetes cluster.(files is present in ingress folder)
•	kubectl apply -f nginx-ingress-controller.yml
•	kubectl apply -f ingress.yml
•	kubectl apply -f echoservice.yml
3.	Pipeline script is present in “misc” folder.
4.	Please change folder path as per your Jenkin workspace in pipeline script.
5.	Please change folder path in changeTag.sh file.
6.	Create jenkin pipeline and use pipeline script present in “misc” folder to test/publish/deploy node js application on kubernetes cluster.
7.	Go and check if pods were created in kubernentes cluster using “kubectl get pods”
8.	Test : Ingress is created based on call coming from different host for different version of application. To depict host and test use :- <IP of cluster node> -H "Host: nodeapp-green.stage.com". if you are using cloud then make sure port 80 is open.
9.	Based on resource availability you can scale deployment kubectl scale deployments/<deployment name> --replicas=20.
10.	To test both version of application simultaneously configure load balancer.  

