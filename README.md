```
 _____ _                               _           
/  ___| |                             (_)          
\ `--.| |__   __ _ _ __ ___  __ _ _ __ _ _ __ ___  
 `--. \ '_ \ / _` | '__/ _ \/ _` | '__| | '_ ` _ \ 
/\__/ / | | | (_| | | |  __/ (_| | |  | | | | | | |
\____/|_| |_|\__,_|_|  \___|\__, |_|  |_|_| |_| |_|
                             __/ |                 
                            |___/                  
```
# 1 - Introduction

Sharegrim is a bash script to use the power of Sharenix on your wayland compositor with ease!

# 2 - Installation

```
git clone https://github.com/MopigamesYT/sharegrim.git
cd sharegrim
chmod +x ./install.sh
./install.sh
```
# 3 - Usage
## 3.1 - Configurating Sharenix
https://github.com/Francesco149/sharenix/blob/master/README.md#usage

## 3.2 - Using Sharegrim
### 3.2.1 - By launching the script manually
Just run ~/.config/sharegrim/screenshot.sh
### 3.2.2 - By binding it using your wayland compositor configuration
example using hyprland: `bind = , Print, exec, ~/.config/sharegrim/screenshot.sh`
