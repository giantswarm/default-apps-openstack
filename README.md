[![CircleCI](https://circleci.com/gh/giantswarm/default-apps-openstack.svg?style=shield)](https://circleci.com/gh/giantswarm/default-apps-openstack)
# This repo is currently UNMAINTAINED.
**If you want to work on it, please fork.**



# default-apps-openstack chart

Giant Swarm offers a default-apps-openstack App including the apps pre-installed in all OpenStack workload clusters.
Here we define the default-apps-openstack chart with its templates and default configuration.

**What is this app?**
**Why did we add it?**
**Who can use it?**

## Installing

There are 3 ways to install this app onto a workload cluster.

1. [Using our web interface](https://docs.giantswarm.io/ui-api/web/app-platform/#installing-an-app)
2. [Using our API](https://docs.giantswarm.io/api/#operation/createClusterAppV5)
3. Directly creating the [App custom resource](https://docs.giantswarm.io/ui-api/management-api/crd/apps.application.giantswarm.io/) on the management cluster.

## Configuring

### values.yaml
**This is an example of a values file you could upload using our web interface.**
```
# values.yaml

```

## Upgrade

### to 0.8.x

If you run prometheus-operator and you want to upgrade to 0.8.x,
you need to upgrade prometheus-operator before upgrading the cluster:

* Upgrade prometheus-operator-crd to v2.0.1

* Upgrade prometheus-operator-app to v2.0.1

If you notice anything wrong, please open a support thread.

### Sample App CR and ConfigMap for the management cluster
If you have access to the Kubernetes API on the management cluster, you could create
the App CR and ConfigMap directly.

Here is an example that would install the app to
workload cluster `abc12`:

```
# appCR.yaml

```

```
# user-values-configmap.yaml


```

See our [full reference page on how to configure applications](https://docs.giantswarm.io/app-platform/app-configuration/) for more details.

## Compatibility

This app has been tested to work with the following workload cluster release versions:

*

## Limitations

Some apps have restrictions on how they can be deployed.
Not following these limitations will most likely result in a broken deployment.

*

