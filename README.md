[![Build Status](https://travis-ci.org/mmckinst/puppet-powershell_linux.svg?branch=master)](https://travis-ci.org/mmckinst/puppet-powershell_linux)
[![Puppet Forge](https://img.shields.io/puppetforge/v/mmckinst/powershell_linux.svg?maxAge=2592000)]()

## Overview

This module installs powershell on Linux.

## Usage

```
include ::powershell_linux
```
## Parameters

* `release_url` - the url to download the package from. defaults to  `https://github.com/PowerShell/PowerShell/releases/download`
* `version` - the version to install. defaults to `6.0.0-alpha.9`
* `release` - the release to install. defaults to `1`

## Development

Run acceptance tests:

```
PUPPET_INSTALL_TYPE=agent BEAKER_set=docker/centos-7 bundle exec rake acceptance
```

## Copyright

```
Copyright 2016 Mark McKinstry

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
