class mysql {
	package {
		"mysql": ensure => installed;
	}

	package { 
		"mysql-server" => installed;
	}

	service { "mysqld":
		enable     => true,
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		require    => [ Package["mysql-server"],
						Package["mysql"],
					  ],
	}
}