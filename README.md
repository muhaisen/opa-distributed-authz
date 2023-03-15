run make build-and-deploy to build the Docker image and deploy the application to the cluster. 
Alternatively, you can run make build to only build the Docker image, or make deploy to only deploy the application.

Point to local docker registry 
https://medium.com/swlh/how-to-run-locally-built-docker-images-in-kubernetes-b28fbc32cc1d

minikube docker-env

eval $(minikube -p minikube docker-env)
One thing to note is that the command eval $(minikube -p minikube docker-env) has to be run in every new terminal window before you build an image. An alternative would be to put it into your .profile file.

## Set namespace
kubectl config set-context --current --namespace=opa-auhtz
## Logs 
kubectl logs producer-6d4f6b674b-rvkcf