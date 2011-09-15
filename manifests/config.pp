class statcountd::config {
    file { $statcountd::params::config_file:
        ensure  => present,
        owner   => root,
        group   => root,
        require => Class['statcountd::install'],
        notify  => Class['statcountd::service'],
        source  => [
            "puppet:///files/${fqdn}${statcountd::params::config_file}",
            "puppet:///files/${hostgroup}${statcountd::params::config_file}",
            "puppet:///files/${domain}${statcountd::params::config_file}",
            "puppet:///files/global${statcountd::params::config_file}",
        ],
    }
}
