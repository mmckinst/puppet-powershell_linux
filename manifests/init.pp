class powershell_linux (
  $release_url = $powershell_linux::params::release_url,
  $version     = $powershell_linux::params::version,
  $release     = $powershell_linux::params::release,
) inherits ::powershell_linux::params {
  validate_string($release_url)
  validate_string($version)
  validate_string($release)

  include powershell_linux::install

}
