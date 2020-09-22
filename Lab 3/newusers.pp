# Apply on all machines A-E
group { "managers":
    ensure => "present",
    gid => "5001",
}
group { "sales":
    ensure => "present",
    gid => "5002",
}
group { "accounting":
    ensure => "present",
    gid => "5003"
}
group { "eberumen":
    ensure => "present",
    gid => "501"
}
group { "mscott":
    ensure => "present",
    gid => "502"
}
group { "dschrute":
    ensure => "present",
    gid => "503"
}
group { "jhalpert":
    ensure => "present",
    gid => "504"
}
group { "pbeesly":
    ensure => "present",
    gid => "505"
}
group { "abernard":
    ensure => "present",
    gid => "506"
}
group { "amartin":
    ensure => "present",
    gid => "507"
}
group { "kkapoor":
    ensure => "present",
    gid => "508"
}
group { "omartinez":
    ensure => "present",
    gid => "509"
}
group { "dphilbin":
    ensure => "present",
    gid => "510"
}
group { "tflenderson":
    ensure => "present",
    gid => "511"
}
group { "kmalone":
    ensure => "present",
    gid => "512"
}
group { "plapin":
    ensure => "present",
    gid => "513"
}
group { "shudson":
    ensure => "present",
    gid => "514"
}
group { "mpalmer":
    ensure => "present",
    gid => "515"
}
group { "cbratton":
    ensure => "present",
    gid => "516"
}

user { "eberumen":
    ensure => present,
    uid => "501",
    gid => "501",
    comment => "Elijah Berumen",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/eberumen",
    managehome => true,
}
user { "mscott":
    ensure => present,
    uid => "502",
    gid => "502",
    groups => ["managers"],
    comment => "Michael Scott",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/mscott",
    managehome => true,
}
user { "dschrute":
    ensure => present,
    uid => "503",
    gid => "503",
    groups => ["managers"],
    comment => "Dwight Schrute",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/dschrute",
    managehome => true,
}
user { "jhalpert":
    ensure => present,
    uid => "504",
    gid => "504",
    groups => ["managers"],
    comment => "Jim Halpert",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/jhalpert",
    managehome => true,
}
user { "pbeesly":
    ensure => present,
    uid => "505",
    gid => "505",
    comment => "Pam Beesly",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/pbeesly",
    managehome => true,
}
user { "abernard":
    ensure => present,
    uid => "506",
    gid => "506",
    groups => ["sales"],
    comment => "Andy Bernard",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/abernard",
    managehome => true,
}
user { "amartin":
    ensure => present,
    uid => "507",
    gid => "507",
    groups => ["accounting"],
    comment => "Angela Martin",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/amartin",
    managehome => true,
}
user { "kkapoor":
    ensure => present,
    uid => "508",
    gid => "508",
    comment => "Kelly Kapoor",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/kkapoor",
    managehome => true,
}
user { "omartinez":
    ensure => present,
    uid => "509",
    gid => "509",
    groups => ["accounting"],
    comment => "Oscar Martinez",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/omartinez",
    managehome => true,
}
user { "dphilbin":
    ensure => present,
    uid => "510",
    gid => "510",
    comment => "Darryl Philbin",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/dphilbin",
    managehome => true,
}
user { "tflenderson":
    ensure => present,
    uid => "511",
    gid => "511",
    comment => "Toby Flenderson",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/tflenderson",
    managehome => true,
}
user { "kmalone":
    ensure => present,
    uid => "512",
    gid => "512",
    groups => ["accounting"],
    comment => "Kevin Malone",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/kmalone",
    managehome => true,
}
user { "plapin":
    ensure => present,
    uid => "513",
    gid => "513",
    groups => ["sales"],
    comment => "Phyllis Lapin",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/plapin",
    managehome => true,
}
user { "shudson":
    ensure => present,
    uid => "514",
    gid => "514",
    groups => ["sales"],
    comment => "Stanley Hudson",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/shudson",
    managehome => true,
}
user { "mpalmer":
    ensure => present,
    uid => "515",
    gid => "515",
    comment => "Meredith Palmer",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/mpalmer",
    managehome => true,
}
user { "cbratton":
    ensure => present,
    uid => "516",
    gid => "516",
    comment => "Creed Bratton",
    password => '$6$Yiog4alOK1bYfEaM$T2WYCwlLcGkK1llecZPshvYEaVrRfcZtJcqS13Ptp1liaqVBv/EFVBG6ZkF7b.wE7gnaFvOXBatt.PQMJgQHL/',
    shell => "/bin/bash",
    home => "/home/cbratton",
    managehome => true,
}

file { "eberumen_dir":
    ensure => directory,
    path => "/home/eberumen",
    owner => "eberumen",
    group => "eberumen",
    mode => 0770,
}
file { "mscott_dir":
    ensure => directory,
    path => "/home/mscott",
    owner => "mscott",
    group => "mscott",
    mode => 0770,
}
file { "dschrute_dir":
    ensure => directory,
    path => "/home/dschrute",
    owner => "dschrute",
    group => "dschrute",
    mode => 0770,
}
file { "jhalper_dir":
    ensure => directory,
    path => "/home/jhalpert",
    owner => "jhalpert",
    group => "jhalpert",
    mode => 0770,
}
file { "pbeesly_dir":
    ensure => directory,
    path => "/home/pbeesly",
    owner => "pbeesly",
    group => "pbeesly",
    mode => 0770,
}
file { "abernard_dir":
    ensure => directory,
    path => "/home/abernard",
    owner => "abernard",
    group => "abernard",
    mode => 0770,
}
file { "amartin_dir":
    ensure => directory,
    path => "/home/amartin",
    owner => "amartin",
    group => "amartin",
    mode => 0770,
}
file { "kkapoor_dir":
    ensure => directory,
    path => "/home/kkapoor",
    owner => "kkapoor",
    group => "kkapoor",
    mode => 0770,
}
file { "omartinez_dir":
    ensure => directory,
    path => "/home/omartinez",
    owner => "omartinez",
    group => "omartinez",
    mode => 0770,
}
file { "dphilbin_dir":
    ensure => directory,
    path => "/home/dphilbin",
    owner => "dphilbin",
    group => "dphilbin",
    mode => 0770,
}
file { "tflenderson_dir":
    ensure => directory,
    path => "/home/tflenderson",
    owner => "tflenderson",
    group => "tflenderson",
    mode => 0770,
}
file { "kmalone_dir":
    ensure => directory,
    path => "/home/kmalone",
    owner => "kmalone",
    group => "kmalone",
    mode => 0770,
}
file { "plapin_dir":
    ensure => directory,
    path => "/home/plapin",
    owner => "plapin",
    group => "plapin",
    mode => 0770,
}
file { "shudson_dir":
    ensure => directory,
    path => "/home/shudson",
    owner => "shudson",
    group => "shudson",
    mode => 0770,
}
file { "mpalmer_dir":
    ensure => directory,
    path => "/home/mpalmer",
    owner => "mpalmer",
    group => "mpalmer",
    mode => 0770,
}
file { "cbratton_dir":
    ensure => directory,
    path => "/home/cbratton",
    owner => "cbratton",
    group => "cbratton",
    mode => 0770,
}
