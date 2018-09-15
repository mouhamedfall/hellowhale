export PATH="$HOME/.kubeadm-dind-cluster:$PATH"

docker build -t hellowhale .

docker run --name hellowhale -p 8181:8181 -d hellowhale

docker login

docker tag hellowhale mouhamedfall/hellowhale

docker push mouhamedfall/hellowhale


kubectl create deployment hellowhale --image mouhamedfall/hellowhale

kubectl expose deployment/hellowhale --port=8181 --name=hellowhalesvc