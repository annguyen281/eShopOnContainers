helm install eshop-basket-api -f app.yaml -f inf.yaml -f ingress_values_dockerk8s.yaml -f ingress_values_linkerd.yaml --set app.name=eshop --set inf.k8s.dns=localhost --set ingress.hosts={localhost} --set image.tag=linux-dev --set image.pullPolicy=Always --set inf.tls.enabled=False --set inf.mesh.enabled=False --set inf.k8s.local=True basket-api

helm install eshop-basket-api -f app.yaml -f inf.yaml -f ingress_values_dockerk8s.yaml -f ingress_values_linkerd.yaml --set app.name=eshop --set inf.k8s.dns=localhost --set ingress.hosts={localhost} --set image.tag=linux-dev --set image.pullPolicy=Always --set inf.tls.enabled=False --set inf.mesh.enabled=False --set inf.k8s.local=True basket-api

kubectl delete -n eshop deployment eshop-webmvc
kubectl delete -n eshop svc webmvc
kubectl delete -n eshop configmap cfg-eshop-webmvc
kubectl delete -n eshop secret sh.helm.release.v1.eshop-webmvc.v1
