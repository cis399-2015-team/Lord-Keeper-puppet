class sshd {
	package {
		"openssh-server": ensure => installed;
	}

	file { "/etc/ssh/sshd_config":

		source  => "puppet:///modules/sshd/sshd_conf",
		mode    => 444,
		owner   => root,
		group   => root,
		# package must be installed before configuration file
		require => Package["openssh-server"],
	}


	service { "sshd":
		# automatically start at boot time
		enable     => true,
		# restart service if it is not running
		ensure     => running,
		# package and configuration must be present for service
		require    => [ Package["openssh-server"],
			        File["/etc/sshd/sshd_config"] ],
		# changes to configuration cause service restart
		subscribe  => File["/etc/sshd/sshd_config"],
	}

	ssh_authorized_key{"matt-key-pair":
	}

	ssh_authorized_key {'yufang-key-pair":
	}
}

