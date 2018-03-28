[![Chef cookbook](https://img.shields.io/cookbook/v/timezone_lwrp.svg)](https://github.com/dragonsmith/timezone_lwrp)
[![Build Status](https://travis-ci.org/dragonsmith/timezone_lwrp.svg?branch=master)](https://travis-ci.org/dragonsmith/timezone_lwrp)

# Description

Provides LWRP to manage timezone.

# Requirements

## Platform

Tested on:
- Ubuntu 14.04
- Ubuntu 16.04
- Debian 8
- Debian 9
- Centos 6
- Centos 7
- Fedora 26
- Fedora 27

Should also work on:
- RHEL 6
- RHEL 7

## Chef version

Chef version >= `12.14.60` has to be used.

# Usage

This cookbook has been designed to provide **LWRP** for your own infrastructure recipes.
Load this cookbook by your chef-client either by adding the line `depends 'timezone_lwrp'` to your infrastructure cookbook's metadata.rb file.

But if you want 'good old' attribute-based configuration you may just add `recipe[timezone_lwrp]` to your run\_list and set `['tz']` attribute to a desired timezone.

## LWRP

### timezone

This resource sets the timezone by editing `/etc/timezone` file and running `dpkg-reconfigure` afterwards.

```ruby
timezone 'Europe/Moscow'
```

## Sponsor

[![Sponsored by Evil Martians](https://evilmartians.com/badges/sponsored-by-evil-martians@2x.png)](https://evilmartians.com)

# License and Author

Author:: Kirill Kouznetsov (<agon.smith@gmail.com>)

Copyright:: 2018, Kirill Kouznetsov.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and

