# vagrant-docker-swarm
Cluster Swarm Local com o Vagrant

christian.barbosa@NC015728 MINGW64 /c/Desenvolvimento
$ cd lab-vagrant/

christian.barbosa@NC015728 MINGW64 /c/Desenvolvimento/lab-vagrant
$

christian.barbosa@NC015728 MINGW64 /c/Desenvolvimento/lab-vagrant
$ git clone https://github.com/denilsonbonatti/docker-projeto2-cluster.git
Cloning into 'docker-projeto2-cluster'...
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (6/6), done.
remote: Total 6 (delta 0), reused 6 (delta 0), pack-reused 0
Receiving objects: 100% (6/6), done.

christian.barbosa@NC015728 MINGW64 /c/Desenvolvimento/lab-vagrant
$ ls
docker-projeto2-cluster/

christian.barbosa@NC015728 MINGW64 /c/Desenvolvimento/lab-vagrant
$ cd docker-projeto2-cluster/

christian.barbosa@NC015728 MINGW64 /c/Desenvolvimento/lab-vagrant/docker-projeto2-cluster (main)
$ code .

christian.barbosa@NC015728 MINGW64 /c/Desenvolvimento/lab-vagrant/docker-projeto2-cluster (main)
$ vagrant up
Bringing machine 'master' up with 'virtualbox' provider...
Bringing machine 'node01' up with 'virtualbox' provider...
Bringing machine 'node02' up with 'virtualbox' provider...
Bringing machine 'node03' up with 'virtualbox' provider...
==> master: Box 'bento/ubuntu-22.04' could not be found. Attempting to find and install...
    master: Box Provider: virtualbox
    master: Box Version: >= 0
==> master: Loading metadata for box 'bento/ubuntu-22.04'
    master: URL: https://vagrantcloud.com/bento/ubuntu-22.04
==> master: Adding box 'bento/ubuntu-22.04' (v202206.13.0) for provider: virtualbox
    master: Downloading: https://vagrantcloud.com/bento/boxes/ubuntu-22.04/versions/202206.13.0/providers/virtualbox.box
    master:
==> master: Successfully added box 'bento/ubuntu-22.04' (v202206.13.0) for 'virtualbox'!
==> master: Importing base box 'bento/ubuntu-22.04'...
==> master: Matching MAC address for NAT networking...
==> master: Checking if box 'bento/ubuntu-22.04' version '202206.13.0' is up to date...
==> master: Setting the name of the VM: master
==> master: Clearing any previously set network interfaces...
==> master: Preparing network interfaces based on configuration...
    master: Adapter 1: nat
    master: Adapter 2: hostonly
==> master: Forwarding ports...
    master: 22 (guest) => 2222 (host) (adapter 1)
==> master: Running 'pre-boot' VM customizations...
==> master: Booting VM...
==> master: Waiting for machine to boot. This may take a few minutes...
    master: SSH address: 127.0.0.1:2222
    master: SSH username: vagrant
    master: SSH auth method: private key
    master: Warning: Connection reset. Retrying...
    master: Warning: Connection aborted. Retrying...
    master: Warning: Connection reset. Retrying...
    master: Warning: Connection aborted. Retrying...
    master:
    master: Vagrant insecure key detected. Vagrant will automatically replace
    master: this with a newly generated keypair for better security.
    master:
    master: Inserting generated public key within guest...
    master: Removing insecure key from the guest if it's present...
    master: Key inserted! Disconnecting and reconnecting using new SSH key...
==> master: Machine booted and ready!
==> master: Checking for guest additions in VM...
    master: The guest additions on this VM do not match the installed version of
    master: VirtualBox! In most cases this is fine, but in rare cases it can
    master: prevent things such as shared folders from working properly. If you see
    master: shared folder errors, please make sure the guest additions within the
    master: virtual machine match the version of VirtualBox you have installed on
    master: your host and reload your VM.
    master:
    master: Guest Additions Version: 6.1.34
    master: VirtualBox Version: 7.0
==> master: Setting hostname...
==> master: Configuring and enabling network interfaces...
==> master: Mounting shared folders...
    master: /vagrant => C:/Desenvolvimento/lab-vagrant/docker-projeto2-cluster
==> master: Running provisioner: shell...
    master: Running: C:/Users/CHRIST~1.BAR/AppData/Local/Temp/vagrant-shell20221108-4672-1uz7gm9.sh
    master: # Executing docker install script, commit: 4f282167c425347a931ccfd95cc91fab041d414f
    master: + sh -c 'apt-get update -qq >/dev/null'
    master: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq apt-transport-https ca-certificates curl >/dev/null'
    master: + sh -c 'mkdir -p /etc/apt/keyrings && chmod -R 0755 /etc/apt/keyrings'
    master: + sh -c 'curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | gpg --dearmor --yes -o /etc/apt/keyrings/docker.gpg'
    master: + sh -c 'chmod a+r /etc/apt/keyrings/docker.gpg'
    master: + sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" > /etc/apt/sources.list.d/docker.list'
    master: + sh -c 'apt-get update -qq >/dev/null'
    master: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq --no-install-recommends docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-scan-plugin >/dev/null'
    master: + version_gte 20.10
    master: + '[' -z '' ']'
    master: + return 0
    master: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq docker-ce-rootless-extras >/dev/null'
    master: + sh -c 'docker version'
    master: Client: Docker Engine - Community
    master:  Version:           20.10.21
    master:  API version:       1.41
    master:  Go version:        go1.18.7
    master:  Git commit:        baeda1f
    master:  Built:             Tue Oct 25 18:01:58 2022
    master:  OS/Arch:           linux/amd64
    master:  Context:           default
    master:  Experimental:      true
    master:
    master: Server: Docker Engine - Community
    master:  Engine:
    master:   Version:          20.10.21
    master:   API version:      1.41 (minimum version 1.12)
    master:   Go version:       go1.18.7
    master:   Git commit:       3056208
    master:   Built:            Tue Oct 25 17:59:49 2022
    master:   OS/Arch:          linux/amd64
    master:   Experimental:     false
    master:  containerd:
    master:   Version:          1.6.9
    master:   GitCommit:        1c90a442489720eec95342e1789ee8a5e1b9536f
    master:  runc:
    master:   Version:          1.1.4
    master:   GitCommit:        v1.1.4-0-g5fd4c4d
    master:  docker-init:
    master:   Version:          0.19.0
    master:   GitCommit:        de40ad0
    master:
    master: ================================================================================
    master:
    master: To run Docker as a non-privileged user, consider setting up the
    master: Docker daemon in rootless mode for your user:
    master:
    master:     dockerd-rootless-setuptool.sh install
    master:
    master: Visit https://docs.docker.com/go/rootless/ to learn about rootless mode.
    master:
    master:
    master: To run the Docker daemon as a fully privileged service, but granting non-root
    master: users access, refer to https://docs.docker.com/go/daemon-access/
    master:
    master: WARNING: Access to the remote API on a privileged Docker daemon is equivalent
    master:          to root access on the host. Refer to the 'Docker daemon attack surface'
    master:          documentation for details: https://docs.docker.com/go/attack-surface/
    master:
    master: ================================================================================
    master:
==> master: Running provisioner: shell...
    master: Running: C:/Users/CHRIST~1.BAR/AppData/Local/Temp/vagrant-shell20221108-4672-1s57hng.sh
    master: Swarm initialized: current node (y80o5t85jio66eqtv6je2svyx) is now a manager.
    master:
    master: To add a worker to this swarm, run the following command:
    master:
    master:     docker swarm join --token SWMTKN-1-02c2rz2ut80601epy1a835dya4qqbmhvgunumn233sm04vlac7-36hjkuka5rr6kyrn1zth4virz 10.10.10.100:2377
    master:
    master: To add a manager to this swarm, run 'docker swarm join-token manager' and follow the instructions.
    master:
==> node01: Box 'bento/ubuntu-22.04' could not be found. Attempting to find and install...
    node01: Box Provider: virtualbox
    node01: Box Version: >= 0
==> node01: Loading metadata for box 'bento/ubuntu-22.04'
    node01: URL: https://vagrantcloud.com/bento/ubuntu-22.04
==> node01: Adding box 'bento/ubuntu-22.04' (v202206.13.0) for provider: virtualbox
==> node01: Importing base box 'bento/ubuntu-22.04'...
==> node01: Matching MAC address for NAT networking...
==> node01: Checking if box 'bento/ubuntu-22.04' version '202206.13.0' is up to date...
==> node01: Setting the name of the VM: node01
==> node01: Fixed port collision for 22 => 2222. Now on port 2200.
==> node01: Clearing any previously set network interfaces...
==> node01: Preparing network interfaces based on configuration...
    node01: Adapter 1: nat
    node01: Adapter 2: hostonly
==> node01: Forwarding ports...
    node01: 22 (guest) => 2200 (host) (adapter 1)
==> node01: Running 'pre-boot' VM customizations...
==> node01: Booting VM...
==> node01: Waiting for machine to boot. This may take a few minutes...
    node01: SSH address: 127.0.0.1:2200
    node01: SSH username: vagrant
    node01: SSH auth method: private key
    node01: Warning: Connection reset. Retrying...
    node01: Warning: Remote connection disconnect. Retrying...
    node01: Warning: Connection aborted. Retrying...
    node01: Warning: Connection reset. Retrying...
    node01: Warning: Connection aborted. Retrying...
    node01:
    node01: Vagrant insecure key detected. Vagrant will automatically replace
    node01: this with a newly generated keypair for better security.
    node01:
    node01: Inserting generated public key within guest...
    node01: Removing insecure key from the guest if it's present...
    node01: Key inserted! Disconnecting and reconnecting using new SSH key...
==> node01: Machine booted and ready!
==> node01: Checking for guest additions in VM...
    node01: The guest additions on this VM do not match the installed version of
    node01: VirtualBox! In most cases this is fine, but in rare cases it can
    node01: prevent things such as shared folders from working properly. If you see
    node01: shared folder errors, please make sure the guest additions within the
    node01: virtual machine match the version of VirtualBox you have installed on
    node01: your host and reload your VM.
    node01:
    node01: Guest Additions Version: 6.1.34
    node01: VirtualBox Version: 7.0
==> node01: Setting hostname...
==> node01: Configuring and enabling network interfaces...
==> node01: Mounting shared folders...
    node01: /vagrant => C:/Desenvolvimento/lab-vagrant/docker-projeto2-cluster
==> node01: Running provisioner: shell...
    node01: Running: C:/Users/CHRIST~1.BAR/AppData/Local/Temp/vagrant-shell20221108-4672-sqvsve.sh
    node01: # Executing docker install script, commit: 4f282167c425347a931ccfd95cc91fab041d414f
    node01: + sh -c 'apt-get update -qq >/dev/null'
    node01: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq apt-transport-https ca-certificates curl >/dev/null'
    node01: + sh -c 'mkdir -p /etc/apt/keyrings && chmod -R 0755 /etc/apt/keyrings'
    node01: + sh -c 'curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | gpg --dearmor --yes -o /etc/apt/keyrings/docker.gpg'
    node01: + sh -c 'chmod a+r /etc/apt/keyrings/docker.gpg'
    node01: + sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" > /etc/apt/sources.list.d/docker.list'
    node01: + sh -c 'apt-get update -qq >/dev/null'
    node01: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq --no-install-recommends docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-scan-plugin >/dev/null'
    node01: + version_gte 20.10
    node01: + '[' -z '' ']'
    node01: + return 0
    node01: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq docker-ce-rootless-extras >/dev/null'
    node01: + sh -c 'docker version'
    node01: Client: Docker Engine - Community
    node01:  Version:           20.10.21
    node01:  API version:       1.41
    node01:  Go version:        go1.18.7
    node01:  Git commit:        baeda1f
    node01:  Built:             Tue Oct 25 18:01:58 2022
    node01:  OS/Arch:           linux/amd64
    node01:  Context:           default
    node01:  Experimental:      true
    node01:
    node01: Server: Docker Engine - Community
    node01:  Engine:
    node01:   Version:          20.10.21
    node01:   API version:      1.41 (minimum version 1.12)
    node01:   Go version:       go1.18.7
    node01:   Git commit:       3056208
    node01:   Built:            Tue Oct 25 17:59:49 2022
    node01:   OS/Arch:          linux/amd64
    node01:   Experimental:     false
    node01:  containerd:
    node01:   Version:          1.6.9
    node01:   GitCommit:        1c90a442489720eec95342e1789ee8a5e1b9536f
    node01:  runc:
    node01:   Version:          1.1.4
    node01:   GitCommit:        v1.1.4-0-g5fd4c4d
    node01:  docker-init:
    node01:   Version:          0.19.0
    node01:   GitCommit:        de40ad0
    node01:
    node01: ================================================================================
    node01:
    node01: To run Docker as a non-privileged user, consider setting up the
    node01: Docker daemon in rootless mode for your user:
    node01:
    node01:     dockerd-rootless-setuptool.sh install
    node01:
    node01: Visit https://docs.docker.com/go/rootless/ to learn about rootless mode.
    node01:
    node01:
    node01: To run the Docker daemon as a fully privileged service, but granting non-root
    node01: users access, refer to https://docs.docker.com/go/daemon-access/
    node01:
    node01: WARNING: Access to the remote API on a privileged Docker daemon is equivalent
    node01:          to root access on the host. Refer to the 'Docker daemon attack surface'
    node01:          documentation for details: https://docs.docker.com/go/attack-surface/
    node01:
    node01: ================================================================================
    node01:
==> node01: Running provisioner: shell...
    node01: Running: C:/Users/CHRIST~1.BAR/AppData/Local/Temp/vagrant-shell20221108-4672-qgg7a9.sh
    node01: This node joined a swarm as a worker.
==> node02: Box 'bento/ubuntu-22.04' could not be found. Attempting to find and install...
    node02: Box Provider: virtualbox
    node02: Box Version: >= 0
==> node02: Loading metadata for box 'bento/ubuntu-22.04'
    node02: URL: https://vagrantcloud.com/bento/ubuntu-22.04
==> node02: Adding box 'bento/ubuntu-22.04' (v202206.13.0) for provider: virtualbox
==> node02: Importing base box 'bento/ubuntu-22.04'...
==> node02: Matching MAC address for NAT networking...
==> node02: Checking if box 'bento/ubuntu-22.04' version '202206.13.0' is up to date...
==> node02: Setting the name of the VM: node02
==> node02: Fixed port collision for 22 => 2222. Now on port 2201.
==> node02: Clearing any previously set network interfaces...
==> node02: Preparing network interfaces based on configuration...
    node02: Adapter 1: nat
    node02: Adapter 2: hostonly
==> node02: Forwarding ports...
    node02: 22 (guest) => 2201 (host) (adapter 1)
==> node02: Running 'pre-boot' VM customizations...
==> node02: Booting VM...
==> node02: Waiting for machine to boot. This may take a few minutes...
    node02: SSH address: 127.0.0.1:2201
    node02: SSH username: vagrant
    node02: SSH auth method: private key
    node02: Warning: Connection reset. Retrying...
    node02: Warning: Connection aborted. Retrying...
    node02: Warning: Remote connection disconnect. Retrying...
    node02: Warning: Connection reset. Retrying...
    node02:
    node02: Vagrant insecure key detected. Vagrant will automatically replace
    node02: this with a newly generated keypair for better security.
    node02:
    node02: Inserting generated public key within guest...
    node02: Removing insecure key from the guest if it's present...
    node02: Key inserted! Disconnecting and reconnecting using new SSH key...
==> node02: Machine booted and ready!
==> node02: Checking for guest additions in VM...
    node02: The guest additions on this VM do not match the installed version of
    node02: VirtualBox! In most cases this is fine, but in rare cases it can
    node02: prevent things such as shared folders from working properly. If you see
    node02: shared folder errors, please make sure the guest additions within the
    node02: virtual machine match the version of VirtualBox you have installed on
    node02: your host and reload your VM.
    node02:
    node02: Guest Additions Version: 6.1.34
    node02: VirtualBox Version: 7.0
==> node02: Setting hostname...
==> node02: Configuring and enabling network interfaces...
==> node02: Mounting shared folders...
    node02: /vagrant => C:/Desenvolvimento/lab-vagrant/docker-projeto2-cluster
==> node02: Running provisioner: shell...
    node02: Running: C:/Users/CHRIST~1.BAR/AppData/Local/Temp/vagrant-shell20221108-4672-m4hbmf.sh
    node02: # Executing docker install script, commit: 4f282167c425347a931ccfd95cc91fab041d414f
    node02: + sh -c 'apt-get update -qq >/dev/null'
    node02: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq apt-transport-https ca-certificates curl >/dev/null'
    node02: + sh -c 'mkdir -p /etc/apt/keyrings && chmod -R 0755 /etc/apt/keyrings'
    node02: + sh -c 'curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | gpg --dearmor --yes -o /etc/apt/keyrings/docker.gpg'
    node02: + sh -c 'chmod a+r /etc/apt/keyrings/docker.gpg'
    node02: + sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" > /etc/apt/sources.list.d/docker.list'
    node02: + sh -c 'apt-get update -qq >/dev/null'
    node02: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq --no-install-recommends docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-scan-plugin >/dev/null'
    node02: + version_gte 20.10
    node02: + '[' -z '' ']'
    node02: + return 0
    node02: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq docker-ce-rootless-extras >/dev/null'
    node02: + sh -c 'docker version'
    node02: Client: Docker Engine - Community
    node02:  Version:           20.10.21
    node02:  API version:       1.41
    node02:  Go version:        go1.18.7
    node02:  Git commit:        baeda1f
    node02:  Built:             Tue Oct 25 18:01:58 2022
    node02:  OS/Arch:           linux/amd64
    node02:  Context:           default
    node02:  Experimental:      true
    node02:
    node02: Server: Docker Engine - Community
    node02:  Engine:
    node02:   Version:          20.10.21
    node02:   API version:      1.41 (minimum version 1.12)
    node02:   Go version:       go1.18.7
    node02:   Git commit:       3056208
    node02:   Built:            Tue Oct 25 17:59:49 2022
    node02:   OS/Arch:          linux/amd64
    node02:   Experimental:     false
    node02:  containerd:
    node02:   Version:          1.6.9
    node02:   GitCommit:        1c90a442489720eec95342e1789ee8a5e1b9536f
    node02:  runc:
    node02:   Version:          1.1.4
    node02:   GitCommit:        v1.1.4-0-g5fd4c4d
    node02:  docker-init:
    node02:   Version:          0.19.0
    node02:   GitCommit:        de40ad0
    node02:
    node02: ================================================================================
    node02:
    node02: To run Docker as a non-privileged user, consider setting up the
    node02: Docker daemon in rootless mode for your user:
    node02:
    node02:     dockerd-rootless-setuptool.sh install
    node02:
    node02: Visit https://docs.docker.com/go/rootless/ to learn about rootless mode.
    node02:
    node02:
    node02: To run the Docker daemon as a fully privileged service, but granting non-root
    node02: users access, refer to https://docs.docker.com/go/daemon-access/
    node02:
    node02: WARNING: Access to the remote API on a privileged Docker daemon is equivalent
    node02:          to root access on the host. Refer to the 'Docker daemon attack surface'
    node02:          documentation for details: https://docs.docker.com/go/attack-surface/
    node02:
    node02: ================================================================================
    node02:
==> node02: Running provisioner: shell...
    node02: Running: C:/Users/CHRIST~1.BAR/AppData/Local/Temp/vagrant-shell20221108-4672-x0c8jr.sh
    node02: This node joined a swarm as a worker.
==> node03: Box 'bento/ubuntu-22.04' could not be found. Attempting to find and install...
    node03: Box Provider: virtualbox
    node03: Box Version: >= 0
==> node03: Loading metadata for box 'bento/ubuntu-22.04'
    node03: URL: https://vagrantcloud.com/bento/ubuntu-22.04
==> node03: Adding box 'bento/ubuntu-22.04' (v202206.13.0) for provider: virtualbox
==> node03: Importing base box 'bento/ubuntu-22.04'...
==> node03: Matching MAC address for NAT networking...
==> node03: Checking if box 'bento/ubuntu-22.04' version '202206.13.0' is up to date...
==> node03: Setting the name of the VM: node03
==> node03: Fixed port collision for 22 => 2222. Now on port 2202.
==> node03: Clearing any previously set network interfaces...
==> node03: Preparing network interfaces based on configuration...
    node03: Adapter 1: nat
    node03: Adapter 2: hostonly
==> node03: Forwarding ports...
    node03: 22 (guest) => 2202 (host) (adapter 1)
==> node03: Running 'pre-boot' VM customizations...
==> node03: Booting VM...
==> node03: Waiting for machine to boot. This may take a few minutes...
    node03: SSH address: 127.0.0.1:2202
    node03: SSH username: vagrant
    node03: SSH auth method: private key
    node03: Warning: Connection reset. Retrying...
    node03: Warning: Connection aborted. Retrying...
    node03: Warning: Connection reset. Retrying...
    node03:
    node03: Vagrant insecure key detected. Vagrant will automatically replace
    node03: this with a newly generated keypair for better security.
    node03:
    node03: Inserting generated public key within guest...
    node03: Removing insecure key from the guest if it's present...
    node03: Key inserted! Disconnecting and reconnecting using new SSH key...
==> node03: Machine booted and ready!
==> node03: Checking for guest additions in VM...
    node03: The guest additions on this VM do not match the installed version of
    node03: VirtualBox! In most cases this is fine, but in rare cases it can
    node03: prevent things such as shared folders from working properly. If you see
    node03: shared folder errors, please make sure the guest additions within the
    node03: virtual machine match the version of VirtualBox you have installed on
    node03: your host and reload your VM.
    node03:
    node03: Guest Additions Version: 6.1.34
    node03: VirtualBox Version: 7.0
==> node03: Setting hostname...
==> node03: Configuring and enabling network interfaces...
==> node03: Mounting shared folders...
    node03: /vagrant => C:/Desenvolvimento/lab-vagrant/docker-projeto2-cluster
==> node03: Running provisioner: shell...
    node03: Running: C:/Users/CHRIST~1.BAR/AppData/Local/Temp/vagrant-shell20221108-4672-1cir53l.sh
    node03: # Executing docker install script, commit: 4f282167c425347a931ccfd95cc91fab041d414f
    node03: + sh -c 'apt-get update -qq >/dev/null'
    node03: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq apt-transport-https ca-certificates curl >/dev/null'
    node03: + sh -c 'mkdir -p /etc/apt/keyrings && chmod -R 0755 /etc/apt/keyrings'
    node03: + sh -c 'curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | gpg --dearmor --yes -o /etc/apt/keyrings/docker.gpg'
    node03: + sh -c 'chmod a+r /etc/apt/keyrings/docker.gpg'
    node03: + sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" > /etc/apt/sources.list.d/docker.list'
    node03: + sh -c 'apt-get update -qq >/dev/null'
    node03: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq --no-install-recommends docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-scan-plugin >/dev/null'
    node03: + version_gte 20.10
    node03: + '[' -z '' ']'
    node03: + return 0
    node03: + sh -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y -qq docker-ce-rootless-extras >/dev/null'
    node03: + sh -c 'docker version'
    node03: Client: Docker Engine - Community
    node03:  Version:           20.10.21
    node03:  API version:       1.41
    node03:  Go version:        go1.18.7
    node03:  Git commit:        baeda1f
    node03:  Built:             Tue Oct 25 18:01:58 2022
    node03:  OS/Arch:           linux/amd64
    node03:  Context:           default
    node03:  Experimental:      true
    node03:
    node03: Server: Docker Engine - Community
    node03:  Engine:
    node03:   Version:          20.10.21
    node03:   API version:      1.41 (minimum version 1.12)
    node03:   Go version:       go1.18.7
    node03:   Git commit:       3056208
    node03:   Built:            Tue Oct 25 17:59:49 2022
    node03:   OS/Arch:          linux/amd64
    node03:   Experimental:     false
    node03:  containerd:
    node03:   Version:          1.6.9
    node03:   GitCommit:        1c90a442489720eec95342e1789ee8a5e1b9536f
    node03:  runc:
    node03:   Version:          1.1.4
    node03:   GitCommit:        v1.1.4-0-g5fd4c4d
    node03:  docker-init:
    node03:   Version:          0.19.0
    node03:   GitCommit:        de40ad0
    node03:
    node03: ================================================================================
    node03:
    node03: To run Docker as a non-privileged user, consider setting up the
    node03: Docker daemon in rootless mode for your user:
    node03:
    node03:     dockerd-rootless-setuptool.sh install
    node03:
    node03: Visit https://docs.docker.com/go/rootless/ to learn about rootless mode.
    node03:
    node03:
    node03: To run the Docker daemon as a fully privileged service, but granting non-root
    node03: users access, refer to https://docs.docker.com/go/daemon-access/
    node03:
    node03: WARNING: Access to the remote API on a privileged Docker daemon is equivalent
    node03:          to root access on the host. Refer to the 'Docker daemon attack surface'
    node03:          documentation for details: https://docs.docker.com/go/attack-surface/
    node03:
    node03: ================================================================================
    node03:
==> node03: Running provisioner: shell...
    node03: Running: C:/Users/CHRIST~1.BAR/AppData/Local/Temp/vagrant-shell20221108-4672-1qk710c.sh
    node03: This node joined a swarm as a worker.
	
christian.barbosa@NC015728 MINGW64 /c/Desenvolvimento/lab-vagrant/docker-projeto2-cluster (main)
$ vagrant ssh master
Welcome to Ubuntu 22.04 LTS (GNU/Linux 5.15.0-30-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Tue Nov  8 08:07:13 PM UTC 2022

  System load:                      0.0224609375
  Usage of /:                       13.7% of 30.34GB
  Memory usage:                     25%
  Swap usage:                       0%
  Processes:                        97
  Users logged in:                  0
  IPv4 address for docker0:         172.17.0.1
  IPv4 address for docker_gwbridge: 172.18.0.1
  IPv4 address for eth0:            10.0.2.15
  IPv4 address for eth1:            10.10.10.100


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento
vagrant@master:~$

vagrant@master:~$ sudo su
root@master:/home/vagrant# docker node ls
ID                            HOSTNAME   STATUS    AVAILABILITY   MANAGER STATUS   ENGINE VERSION
y80o5t85jio66eqtv6je2svyx *   master     Ready     Active         Leader           20.10.21
niv2kq68s1tytqe55h11it7ah     node01     Ready     Active                          20.10.21
tieghvur021rkf35xl2sc7urt     node02     Ready     Active                          20.10.21
dyamzoj9zjbgswg3oxpe4s6uv     node03     Ready     Active                          20.10.21
root@master:/home/vagrant#

christian.barbosa@NC015728 MINGW64 /c/Desenvolvimento/lab-vagrant/docker-projeto2-cluster (main)
$ vagrant destroy
    node03: Are you sure you want to destroy the 'node03' VM? [y/N] y
==> node03: Forcing shutdown of VM...
==> node03: Destroying VM and associated drives...
    node02: Are you sure you want to destroy the 'node02' VM? [y/N] y
==> node02: Forcing shutdown of VM...
==> node02: Destroying VM and associated drives...
    node01: Are you sure you want to destroy the 'node01' VM? [y/N] y
==> node01: Forcing shutdown of VM...
==> node01: Destroying VM and associated drives...
    master: Are you sure you want to destroy the 'master' VM? [y/N] y
==> master: Forcing shutdown of VM...
==> master: Destroying VM and associated drives...
