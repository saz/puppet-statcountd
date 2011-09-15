class statcountd::service {
    service { $statcountd::params::service_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => false,
        require    => Class['statcountd::config'],
    }
}
