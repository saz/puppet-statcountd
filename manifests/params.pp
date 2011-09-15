class statcountd::params {
    case $operatingsystem {
        /(Ubuntu|Debian)/: {
            $package_name = 'statcountd'
            $service_name = 'statcountd'
            $config_file = '/etc/statcountd.cfg'
        }
    }
}
