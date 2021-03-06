task publicTagImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ghcr.io/kathy-t/dockstore-tool-helloworld:1"
  }
}

task publicTagImage2 {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ghcr.io/kathy-t/dockstore-tool-helloworld:3"
  }
}

task publicDigestImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ghcr.io/kathy-t/hello-world@sha256:88da9902eff5a6501e5514f5d18d23deb89e3885ea5f7ed52e7ca9abffea15ec"
  }
}


task icgcPublicDigestImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ghcr.io/icgc-argo/workflow-gateway@sha256:e2d9d5833d6d1cc5698fe1eb11663a6832fdf056cf2827d8ab628234caefaf9d"
  }
}

task multiArchPublicImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ghcr.io/kathy-t/multi-arch-image:1"
  }
}

workflow test {
  call publicTagImage
  call publicTagImage2
  call publicDigestImage
  call icgcPublicDigestImage
  call multiArchPublicImage
}
