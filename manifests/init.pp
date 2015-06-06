# == Class: unifi
#
# Install Unifi controller software
#
# === Parameters
#
# [*package_name*]
#   The package name
#
# === Examples
#
#  include ::unifi # or
#  class { '::unifi': }
#
#  # Use unifi-beta
#  class { 'unifi':
#    package_name => 'unifi-beta',
#  }
#
#
class unifi (
  $package_name = $unifi::params::package_name,
) inherits unifi::params {

  class { 'unifi::install': } ->
  class { 'unifi::service': } ->
  Class['unifi']
}
