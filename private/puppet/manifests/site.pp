Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/", "/usr/local/bin/" ] }

Package {
	require => Exec['apt-get update'],
}

exec { 'apt-get update': 
	command => 'apt-get update',
}

include phpfpm

phpfpm::nginx::vhost { 'vhost_name':
    server_name => 'dev.example.com',
    root        => '/vagrant/public',
}
