> [!NOTE]
> This is targetted towards linux users who use arch based distributions. <br>
> Support for Windows, MacOS and other distros will be added sooner or later.

# New to C3?

Although not inherently overwhelming, if you are thinking of using C3 as your first language, this guide will help you just good for a seamless transition to write your first ever code in C3 on arch based distros. <br> <br>
Use (these) command(s):
```
yay -S c3c-git
```
or:
```
paru -S c3c-git
```
or:
``` 
aura -A c3c-git
```
Decide as per your AUR package manager, or you want to be a bit more advanced do:
```
git clone https://aur.archlinux.org/c3c-git.git
cd c3c-git
makepkg -si
```

Good, now check if it has been REALLY installed by running this command:
```
c3c --version
```

And that should return you relationally this:
```
C3 Compiler Version:       <compiler_version_here>
Installed directory:       /directory/of/user/c3c/
Git Hash:                  <cryptic_omnious_line_of_text>
Backends:                  LLVM
LLVM version:              <LLVM_version>
LLVM default target:       (x86_64) <target_machine_OS>
```

<hr>

### [Official C3 installation guide for other distributions, Windows and MacOS](https://c3-lang.org/getting-started/prebuilt-binaries/#installing-on-windows)
