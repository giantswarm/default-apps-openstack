# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Fixed

- Update cloud-provider-openstack-app to 0.6.1 for removed ca-certs mount.

## [0.6.0] - 2022-05-23

### Added

- Add `csi-external-snapshotter` app to be able to create volumesnapshots.
- Upgrade `cloud-provider-openstack` to `0.5.0` to create default `volumesnapshotclass`. 
- Add `cert-manager` app in order to use validating webhooks.

### Changed

- Upgrade `cloud-provider-openstack` to version `0.6.0`.
- Upgrade `csi-external-snapshotter` to version `0.2.0`.

## [0.5.0] - 2022-04-07

### Changed

- Upgrade `node-exporter` to version `1.11.0` and disable `nvme` and `conntrack` collectors that don't work with latest ubuntu images.

## [0.4.0] - 2022-04-01

### Changed

- Upgrade `cloud-provider-openstack` to version `0.4.0`.

## [0.3.0] - 2022-03-30

### Added

- Add `giantswarm.io/managed-by` label so apps are accepted by `app-admission-controller`.

### Changed

- Move from `giantswarm-catalog` to `cluster-catalog`.

## [0.2.0] - 2022-03-07

### Fixed

- Set the DNS Service name to `kube-dns` for `net-exporter`.

### Added

- Add per-app userconfig ConfigMaps and Secrets so preinstalled apps can be configured.

### Changed

- Move app definitions to `values.yaml`.
- Update `cert-exporter` from v2.0.0 to v2.1.0.
- Update `kube-state-metrics` to v1.5.1 to v1.7.0.
- Update `metrics-server` from v1.5.0 to v1.6.0.
- Update `node-exporter` from v1.8.0 to v1.9.0.

## [0.1.1] - 2022-02-16

### Changed

- Upgrade `calico-app` to 0.2.1 to enable Felix metrics.
- Upgrade `cloud-provider-openstack` to version 0.2.2.
- Restrict provider to `openstack`.
- Pass cluster tag to cloud-provider-openstack apps.

## [0.1.0] - 2022-01-25

### Added

- Add apps to helm chart corresponding to OpenStack v20.0.0-alpha1 release.
- Initialize repository from template.

[Unreleased]: https://github.com/giantswarm/default-apps-openstack/compare/v0.6.0...HEAD
[0.6.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.5.0...v0.6.0
[0.5.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.4.0...v0.5.0
[0.4.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/giantswarm/default-apps-openstack/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/default-apps-openstack/releases/tag/v0.1.0
