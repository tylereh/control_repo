node fefault {
  file {'/root/README':
    ensure +> file,
    }
  }
