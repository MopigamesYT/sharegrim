#!/bin/bash

imgDate=$(date "+%y%m%d_%H-%M-%S")
bgColor="ff006133"
if [ -d "$HOME/screenshots/" ]
  then
    isSet=$(grim -g "$(slurp -b $bgColor)" "$HOME/screenshots/screenshot-$imgDate.png" 2>&1)
  else
    mkdir $HOME/screenshots/
    isSet=$(grim -g "$(slurp -b $bgColor)" "$HOME/screenshots/screenshot-$imgDate.png" 2>&1)
fi
if [ -z ${isSet} ]
  then
    mplayer "https://www.myinstants.com/media/sounds/iphone-screenshot.mp3"
    output=$(sharenix -m=f $HOME/screenshots/screenshot-$imgDate.png)
    scrurl=$(echo $output | grep -o "http[s]\?://[^[:space:]]\+")
      if [ -z ${scrurl} ];
        then
         notify-send "ShareNIX - Failed" "There was an error sending your screenshot to your file hoster. check your internet connection and your config file then try again later."
        else
          wl-copy $scrurl
          mplayer https://www.myinstants.com/media/sounds/sentmessage_1.mp3
          notify-send -i $HOME/screenshots/screenshot-$imgDate.png "ShareNIX - Completed" "Screenshot pasted in the clipboard! URL: $scrurl"
      fi
fi
