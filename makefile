# Build the consumer Docker image
build-consumer:
	docker build -t ai-consumer:2023 -f consumer/Dockerfile .

# Build the producer Docker image
build-producer:
	docker build -t ai-producer:2023 -f producer/Dockerfile .

# Build the node Docker image
build-node-app:
	docker build -t ai-node-app:2023 -f app/Dockerfile .

# Build the opa-service Docker image
build-opa:
	docker build --no-cache --progress=plain -t ai-opa:2023 -f opa-service/Dockerfile .

# Build both Docker images
# build: build-consumer build-producer
build: build-node-app build-opa

# Run the Kubernetes deployment
deploy:
	kubectl apply -f deployment-v2.yaml

# Build the image and run the deployment
build-and-deploy: build deploy

# Delete the producer deplotment
delete-producer:
	kubectl delete deployment producer

# Delete the consumer deplotment
delete-consumer:
	kubectl delete deployment consumer
# Delete deployments
delete:delete-producer delete-consumer