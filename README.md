vagrant-smartos-guest
=====================

Adds some fixes to Vagrant for integrating with SmartOS. This gem
is intended to package code fixes that have already been submitted to
Vagrant as pull requests, before those fixes have been includes in an
official release.

## Installation

If using a development install of Vagrant, add the following to your
Gemfile:

```ruby
group :development do
  gem 'vagrant'
end

group :plugins do
  gem 'vagrant-smartos-guest'
end
```

Otherwise install the plugin into your omnibus installation of Vagrant:

```bash
vagrant plugin install vagrant-smartos-guest
```

## Current state

This gem is currently usable with Vagrant 1.6.3. It fixes some
regressions in the way that Vagrant handles synced folders of type:
'rsync'.

* <https://github.com/mitchellh/vagrant/pull/4415>
* <https://github.com/mitchellh/vagrant/pull/4274>

