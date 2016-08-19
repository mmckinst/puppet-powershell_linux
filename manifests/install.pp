class powershell_linux::install inherits powershell_linux {
  $package_version = $::operatingsystem ? {
    /(CentOS|RedHat)/ => regsubst($powershell_linux::version, '-', '_')
  }

  $download_url = $::operatingsystem ? {
    /(CentOS|RedHat)/ => "${powershell_linux::release_url}/v${powershell_linux::version}/powershell-${package_version}-${powershell_linux::release}.el${::operatingsystemmajrelease}.centos.${::architecture}.rpm"
  }

  ensure_packages(['libunwind', 'libicu'])
  package {'powershell':
    ensure   => present,
    provider => 'rpm',
    source   => $download_url,
    require  => [Package['libunwind'], Package['libicu']],
  }
}
