# == Class: unifi::install
class unifi::install inherits unifi::params {
  apt::source { 'ubiquiti':
    location => 'http://www.ubnt.com/downloads/unifi/debian',
    release  => 'stable',
    repos    => 'ubiquiti',
    key      => {
      'id'        => '4A228B2D358A5094178285BE06E85760C0A52C50',
      'keyserver' => 'keyserver.ubuntu.com',
    },
  }

  package { $unifi::package_name:
    ensure  => present,
    require => [ Apt::Source['ubiquiti'] ],
  }
}
