# WSL DATABASES
See `how2run.txt` to findout docker compose cmd. Enjoy.


## WSL COMMANDS
### C:\Users\WINUSER\.wslconfig
```
[wsl2]
swap=0
localhostForwarding=true
networkingMode=nat
dnsTunneling=true
```

#### Update the Windows Subsystem for Linux package.
`wsl --update`

### Install a Windows Subsystem for Linux distribution.
`wsl.exe --install`

### Run the specified distribution.
`wsl -d <DistroName>`

### Show running distributions
`wsl --list --running`

### Show detailed information about all distributions.
`wsl --list --verbose`

### Unregisters the distribution and deletes the root filesystem
`wsl --unregister <DistroName>`

### Open your WSL folder in Windows File Explorer, enter: explorer.exe .
`explorer.exe .`

### Use the Linux file system root directory: \\wsl$\<DistroName>\home\<UserName>\Project
`\\wsl.localhost\Ubuntu\home\username\projects`


## INSTALL DOCKER-CE IN WSL2.Ubuntu 
### Update apt package
`sudo apt update && sudo apt install ca-certificates curl gnupg lsb-release`

### Add docker gpg key
`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg`

### Add docker source
```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" |
sudo tee /etc/apt/sources.list.d/docker.list
```

### Install docker-ce
```
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io
sudo service docker start
sudo usermod -aG docker $USER
```

### Restart wsl
```
wsl --shutdown
wsl -d <DistroName>
```
