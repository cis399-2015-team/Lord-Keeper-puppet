#matt's
node ip-10-0-6-70 {
	include sshd
	include postfix
	include httpd
	include php
	include mysql
}

#yufang's
node ip-10-0-6-127 {
	include sshd
	include postfix
	include httpd
	include php
	include mysql
}

#puppet master
node ip-10-0-6-135 {
	cron { "puppet update":
	   	command => "cd /etc/puppet && git pull -q origin master",
	   	user => root,
	   	minute => "*/5",
	}

	include sshd
	include postfix
	include httpd
	include php
	include mysql
}
