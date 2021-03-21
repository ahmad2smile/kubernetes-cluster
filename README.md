# Kubernetes Cluster

Kubernetes Cluster example with Terraform using Minikube on top of KVM.


## Usage:

Start `minikube`:

```
minikube start --driver=kvm2
```

![Screenshot 2021-03-21 163712](https://user-images.githubusercontent.com/6108922/111919835-3984ef80-8a8c-11eb-8f41-6244160d9f8d.png)

Check VMS:

```
sudo virsh list --all
```
![Screenshot 2021-03-21 193551 (2)](https://user-images.githubusercontent.com/6108922/111919924-8963b680-8a8c-11eb-9463-4665a11b5ca9.png)

Get Service URL:

```
minikube service --url demo-app
```
