class nginx::service(
  String $ensure       = $::nginx::service_ensure,
  String $service_name = $::nginx::service_name,
  String $pattern      = $::nginx::service_pattern,
  String $enable       = $::nginx::service_enable,
  String $hasstatus    = $::nginx::service_hasstatus,
  String $hasrestart   = $::nginx::service_hasrestart,
) {
  service { 'nginx_service':
    ensure     => $ensure,
    name       => $service_name,
    enable     => $enable,
    hasstatus  => $hasstatus,
    hasrestart => $hasrestart,
    pattern    => $pattern,
  }
}
