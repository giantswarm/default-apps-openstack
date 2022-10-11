# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.7.3] - 2022-10-11

### Changed

- Update `cert-manager-app` from `2.15.2` to `2.17.1`.
- Update `cloud-provider-openstack-app` from `0.6.2` to `0.7.0`.
- Update `csi-external-snapshotter-app` from `0.2.0` to `0.3.0`.
- Change `csi-external-snapshotter-app` config for default `VolumeSnapshotClass`.

### Added

- Added `application.giantswarm.io/app-type: "bundle"` annotation

## [0.7.2] - 2022-09-22

### Changed

- Disabled force upgrade for `cert-manager`. It causes messed up installations because the initial install times out as there are usually no ready nodes in this case at that time. Forcing the upgrade possibly deletes an already running installation as Helm default timeout is 5 mins and `chart-operator` stops waiting for the status after 2 mins, leaving the install process running and marking the release as pending.

## [0.7.1] - 2022-09-20

- Use `coredns.svc.kube-system` as monitoring target for `net-operator`

## [0.7.0] - 2022-09-19

### Added

- Add `coredns` app to be able to configure coredns configuration via app platform.

## [0.6.5] - 2022-09-19

### Changed

- Update `cert-exporter` from `2.1.0` to `2.2.0`.
- Update `cert-manager-app` from `2.15.2` to `2.15.3`.
- Update `cilium-app` from `0.1.0` to `0.2.6`.
- Update `metrics-server-app` from `1.6.0` to `1.8.0`. 
- Update `cluster-resources-app` from `0.1.0` to `0.1.1`.

## [0.6.4] - 2022-08-17

### Changed

- Update `cert-manger` to 2.15.2.

## [0.6.3] - 2022-08-17

### Fixed

- Bump `openstack-cloud-controller-manager` version to `0.6.2` to bring fixes.

## [0.6.2] - 2022-08-16

### Fixed

- Update kube-state-metrics to 1.11.0 to fix team label for monitoring purposes.

## [0.6.1] - 2022-06-27

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

[Unreleased]: https://github.com/giantswarm/default-apps-openstack/compare/v0.7.3...HEAD
[0.7.3]: https://github.com/giantswarm/default-apps-openstack/compare/v0.7.2...v0.7.3
[0.7.2]: https://github.com/giantswarm/default-apps-openstack/compare/v0.7.1...v0.7.2
[0.7.1]: https://github.com/giantswarm/default-apps-openstack/compare/v0.7.0...v0.7.1
[0.7.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.6.5...v0.7.0
[0.6.5]: https://github.com/giantswarm/default-apps-openstack/compare/v0.6.4...v0.6.5
[0.6.4]: https://github.com/giantswarm/default-apps-openstack/compare/v0.6.3...v0.6.4
[0.6.3]: https://github.com/giantswarm/default-apps-openstack/compare/v0.6.2...v0.6.3
[0.6.2]: https://github.com/giantswarm/default-apps-openstack/compare/v0.6.1...v0.6.2
[0.6.1]: https://github.com/giantswarm/default-apps-openstack/compare/v0.6.0...v0.6.1
[0.6.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.5.0...v0.6.0
[0.5.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.4.0...v0.5.0
[0.4.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/giantswarm/default-apps-openstack/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/giantswarm/default-apps-openstack/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/default-apps-openstack/releases/tag/v0.1.0
