#REPOSITORY
REPO=cloud
cd c:\git\${REPO}

git config -l

git config --local user.name "username"
git config --local user.email "tom@example.com"

# create SSH key in Windows Git Bash
ssh-keygen -t ed25519 -C "your_email@example.com"

cd
clip < .ssh/id_ed25519

# paste and set key in GUI(Setting > Access > SSH key)

 git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager-core.exe
