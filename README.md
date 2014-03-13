vagrant-smartos-guest
=====================

Adds Vagrant guest detection and guest capabilities for SmartOS.

This plugin is superceded by [this pull request](https://github.com/mitchellh/vagrant/pull/3102),
which adds SmartOS guest detection directly into Vagrant. At the
time of this writing (Vagrant 1.5), it has not yet been released.

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

## Usage

This plugin allows Vagrant to recognize when a guest box is a SmartOS
global zone or local zone.

When connecting to a SmartOS global zone in VirtualBox without guest
additions, very likely the default mountpoint will need to be disabled.

To disable the default mountpoint, add this to your Vagrantfile inside
your config block:

```ruby
config.vm.synced_folder ".", "/vagrant", disabled: true
```

When using a synced folder of type `rsync` in a global zone, you will
almost certainly want to sync the folder into a persistent location.

```ruby
config.vm.synced_folder ".", "/vagrant", disabled: true
config.vm.synced_folder ".", "/zones/vagrant", type: 'rsync'
```

When sharing a folder via NFS, you can override the default mountpoint:

```ruby
config.vm.synced_folder ".", "/vagrant", type: "nfs"
```

