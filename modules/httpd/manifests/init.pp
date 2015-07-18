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

	file { "/var/www/html/index.html":
		mode	=> 444,
		owner	=> root,
		group	=> root,
		source	=> "puppet:///modules/httpd/index.html",
		require	=> Package["httpd"],
	}

	service { "httpd":
		enable	=> true,
		ensure	=> running,
		require	=> [ Package["httpd"],
				File["/etc/httpd/conf/httpd.conf"],
				File["/var/www/html/index.html"], ],
	}
}