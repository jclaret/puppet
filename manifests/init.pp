#
class foo (
  $module_ensure = $foo::params::module_ensure
) inherits foo::params {

  case $module_ensure {
    'present': {
      $packages_ensure = latest
    }
    'absent': {
      $packages_ensure = absent
    }
    default: {
      fail ("Parameter module_ensure can only be present or absent")
    }
  }

  include foo::params
  include foo::install
}
