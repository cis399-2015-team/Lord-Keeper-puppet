class php {
	package {
		"php": ensure => installed;
	}

	package {
		"php-mysql": ensure => installed;
	}

	file { "/etc/php.ini":
		mode    => 444,
		owner   => root,
		group   => root,
		source  => "puppet:///modules/php/php.ini",
		require => Package["php"],
	}
}