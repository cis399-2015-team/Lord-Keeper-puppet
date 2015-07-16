class httpd {
	package {
		"httpd": ensure => installed;
	}

	file { "/etc/httpd/conf/httpd.conf":
		mode    => 444,
		owner   => root,
		group   => root,
		source  => "puppet:///modules/httpd/httpd.conf",
		require => Package["httpd"],
	}

	service { "httpd":
		enable	=> true,
		ensure	=> running,
		require	=> [ Package["httpd"],
				File["/etc/httpd/conf/httpd.conf"], ],
	}
}
