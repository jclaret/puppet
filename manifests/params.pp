#
class foo::params {
  case $::operatingsystem {
    'CentOS':{
      $packages = ["vim-enhanced","vim-common"]
    }
    'Ubuntu':{
      $packages = "vim"
    }
    'Debian':{
      $packages = "vim"
    }
    default: {
      fail("${::operatingsystem} is not supported")
    }
  }
  $module_ensure = present
}
