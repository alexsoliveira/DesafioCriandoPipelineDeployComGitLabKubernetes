echo "Criando as imagens..."

docker build -t alexsoliveira/kubernetes-projeto2-dio:1.0 app/.

echo "Realizando o push das imagens..."

docker push alexsoliveira/kubernetes-projeto2-dio:1.0

echo "Criando servicos no cluster kubernetes..."

kubectl apply -f ./mysql-deployment.yml --record

echo "Criando os deployments..."

kubectl apply -f ./app-deployment.yml --record


