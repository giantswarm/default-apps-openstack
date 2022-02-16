# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.1] - 2022-02-16

### Changed

- Upgrade `calico-app` to 0.2.1 to enable Felix metrics.
- Upgrade `cloud-provider-openstack` to version 0.2.0.
- Restrict provider to `openstack`.
- Pass cluster tag to cloud-provider-openstack apps.

## [0.1.0] - 2022-01-25

### Added

- Add apps to helm chart corresponding to OpenStack v20.0.0-alpha1 release.
- Initialize repository from template.

[Unreleased]: https://github.com/giantswarm/giantswarm/compare/v0.1.1...HEAD
[0.1.1]: https://github.com/giantswarm/giantswarm/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/default-apps-openstack/releases/tag/v0.1.0
