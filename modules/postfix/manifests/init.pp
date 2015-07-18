class postfix {
    package {
        "postfix": ensure => installed;
    }

    service {"postfix":
        	enable    => true,
        	ensure    => running,
        	require   => [ Package["postfix"],
                             File["/etc/postfix/main.cf"]],
        	subscribe => File["/etc/postfix/main.cf"],
    }

    file {"/etc/postfix/main.cf":
            mode    => 444,
            owner   => root,
            group   => root,
            source  => "puppet:///modules/postfix/main.cf",
	    require => Package["postfix"],
    }

}
