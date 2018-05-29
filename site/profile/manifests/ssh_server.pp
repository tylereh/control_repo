class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDUAMhNYyTqEYuSxCGVsklmrLrD769tFqf+CRXsrF5KCK67xuaAb+0WgHbOHjySfNHNZswY2sWdTBItEMiGRhxILcVuse2x0zrT2934+2QZHKka/Xf4l4oaLw00+gf7tjyBmlkMnd1TRMa6YY37haUqdJUdd1BRKjuUiQyOq7lup79AJoQznt8VyrVqhmyqAs24762XprY0EpJBh640DK+cHfULTKXDQuK1xHAT7RHHYS+Z46vfbFBUj5SLAO2Qw3pbj8wXMdZf4BxIr2KxocA/UJkrMhySCsYgXOIoW/zysu98+wlStsAsZr4zACkH2Ev4ndaS0gAp5PKQihe5I0g7',
	}  
}
