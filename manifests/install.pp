class foo::install inherits foo::params {
  package {$foo::params::packages:
    ensure => $foo::packages_ensure,
  }
}
