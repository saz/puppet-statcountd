class statcountd::install {
    package { $statcountd::params::package_name:
        ensure => present,
    }
}
