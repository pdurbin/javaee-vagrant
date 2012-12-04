stage { 'repos':    before => Stage['packages'] }

stage { 'packages': before => Stage['users'] }

stage { 'downloads':    before => Stage['main'] }

stage { 'users':    before => Stage['main'] }

stage { 'postgres':
  require => Stage['main']
}

stage { 'last':
  require => Stage['postgres']
}

stage { 'gfish':
  require => Stage['last']
}

stage { 'app':
  require => Stage['gfish']
}

class {
#    'repos':    stage => repos;
    'packages': stage => packages;
#    'users':    stage => users;
#    'server1':  stage => main;
    'downloads':     stage => downloads;
    'appserver':     stage => main;
    'postgres':     stage => postgres;
    'last':     stage => last;
    'gfish':     stage => gfish;
    'app':     stage => app;
}
