# == Class: unifi::service
class unifi::service {
  service { 'unifi':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
