class sendmail {
	package {
		"sendmail": ensure => installed;
	}
	
	file {"/etc/mail/sendmail.cf":
		mode    => 444,
		owner   => root,
		group   => root,
		source  => "puppet:///modules/sendmail/sendmail.cf",
		require => Package["sendmail"],
	}
	
	file {"/etc/mail/submit.cf":
		mode    => 444,
                owner   => root,
                group   => root,
                source  => "puppet:///modules/sendmail/submit.cf",
                require => Package["sendmail"],
	}

	file {"/etc/mail/local-host-names":
		mode    => 444,
                owner   => root,
                group   => root,
                source  => "puppet:///modules/sendmail/local-host-names",
                require => Package["sendmail"],
	}

	file {"/etc/mail/access":
		mode    => 444,
                owner   => root,
                group   => root,
                source  => "puppet:///modules/sendmail/access",
                require => Package["sendmail"],

	}

	service {"sendmail":
		enable	=> true,
		ensure	=> running,
		require	=> [ Package["sendmail"],
				File["/etc/mail/sendmail.cf"],
				File["/etc/mail/submit.cf"],
				File["/etc/mail/local-host-names"],
				File["/etc/mail/access"], ],
	}

}
