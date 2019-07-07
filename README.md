# home

To use this repo, add the following alias to change environment of git:
```
alias githome='git --work-tree=$HOME --git-dir=$HOME/.home'
```

Cloning this repo to your home dir:
```
cd ~
git init
git remote add origin ssh://host/repo.git
git pull origin master
```



