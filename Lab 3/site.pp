file { '/tmp/hello':
content => "Hello Earth\n", owner => 'root',
group => 'nobody', mode => '0600',
}

