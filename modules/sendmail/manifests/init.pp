class sendmail {
	package {
		"sendmail": ensure => installed;
	}
	
	file {"/etc/mail/sendmail.cf":
	}
	
	file {"/etc/mail/submit.cf":
	}

	file {"/etc/mail/local-host-names":
	}

	file {"/etc/mail/access":

	}
}
