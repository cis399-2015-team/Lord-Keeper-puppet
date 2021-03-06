class sshd {
	package {
		"openssh-server": ensure => installed;
	}

	file { "/etc/ssh/sshd_config":
		mode    => 444,
		owner   => root,
		group   => root,
		source  => "puppet:///modules/sshd/sshd_config",
		require => Package["openssh-server"],
	}

	service { "sshd":
		enable     => true,
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		require    => [ Package["openssh-server"],
			       	    File["/etc/ssh/sshd_config"], ],
		subscribe  => File["/etc/ssh/sshd_config"],

	}

	ssh_authorized_key{ "matt-key-pair":
		user	=> "ec2-user",
		type 	=> "ssh-rsa",
		key 	=> "AAAAB3NzaC1yc2EAAAADAQABAAABAQCAonagiOlt3xIH6pW/ym9Q2b8C8uhF+Vnhe7lPtLThPSqpMpRX9cg/MQsfcXFC49z/hphnjPdbQQc8kGc3pCJyVI7nHY04Th6RBDyCpWqhs8MIZIR3/gG55yUJczd4yQgjHex02F0Jrgtod1HTKG+dY9ZUhI2eqqytO1N5Jj4D6wya/VJ5DjJqFbwn6AkgJKzQeHGY00+mKJiSlzEYNr5Iy8b8DwhScaE9izxNrVSlxhaio5LZagEEyeWzubFQI8Vz3m2nItfAbKAYVl6MHhebfq01HRcCyWpTQxw6FiiR+2k18I+NzYgI/ZDfnT9UXeGgwMXl+6Ywrf0sFFh3NbIL",
	}

	ssh_authorized_key { "yufang-key-pair":
		user	=> "ec2-user", 
		type	=> "ssh-rsa",
		key	=> "AAAAB3NzaC1yc2EAAAADAQABAAABAQCkFKYXKYCzmUxUENsGMpILBXWfflS3F4td6QZ/QODxJB6Avj4Np+Lv9SD5a/+AmrCq74Mqbn3C9Z2MCPQX/GLptazGb4f8okOE1guz10ZtTxPbVTU4qxAowu5/GPpGHB+QKRm9IduTWGJLS/bmEoiafvJt/dniWOmwb9/BMctFZ7HyM0DB9h1N4pBbJepXuD3SG/jIPPlgDEuV+Jc5aFM/rjd+YK6Kgp/GEznT/6V3T6kXV1NlEnXm/V2224g/6UlwVaY6bf+p6BFz6+CZSc+qKNAUUfrbUyreTHgFM600ccgVTZAzUdcrxq2cBOjlt7t2NSzhHLv2GSl6dxV46qv5",
	}
}