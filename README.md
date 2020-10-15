# RadonDB

RadonDB = Radon + Mysql

RadonDB is an open source, Cloud-native MySQL database for unlimited scalability and performance.

RadonDB is depend of Radon and Mysql

## Introduction

This chart bootstraps a single node Radon and multi mysql node statefulset on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- Kubernetes 1.10+ with Beta APIs enabled
- PV provisioner support in the underlying infrastructure

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ cd radondb
$ helm install --name-template my-release .
or
$ helm install my-release .
```

> set radondb parameters in value.yaml
>
> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `my-release` :

```bash
$ helm uninstall my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release completely.

## Persistence

By default a PersistentVolumeClaim is created and mounted into that directory. In order to disable this functionality
you can change the values.yaml to disable persistence and use an emptyDir instead.

> *"An emptyDir volume is first created when a Pod is assigned to a Node, and exists as long as that Pod is running on that node. When a Pod is removed from a node for any reason, the data in the emptyDir is deleted forever."*

## package

radon： `helm package radon`

radondb： `helm package -u radondb` ,  `-u ` is get the depend.


```
upload to helmhub。
mkdir -p xxx
cp radon-xx.tar.gz xxx
helm repo index xxx --url http:/localhost:8091 --merge /root/helmhub/index.yaml
helm repo update
```



## change parameters

### mysql 

mysql used the configmap to set parameters，so change the parameters pods will restart。

 `helm upgrade -f values.yaml release_instance hub_address/radondb` 

### radon

use this api (https://github.com/radondb/radon/blob/master/docs/api.md)
