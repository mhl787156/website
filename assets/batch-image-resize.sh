#!/usr/bin/env bash
# Purpose: batch image resizer
# Source: https://guides.wp-bullet.com
# Author: Mike

# absolute path to image folder
FOLDER="$1"
echo "Looking in Folder $FOLDER"

# max width
WIDTH=800

# max height
HEIGHT=800

#resize png or jpg to either height or width, keeps proportions using imagemagick
# find ${FOLDER} -iname '*.jpg' -o -iname '*.png' -exec convert \{} -verbose -resize "$WIDTH"x"$HEIGHT"\> \{} \;

#resize png to either height or width, keeps proportions using imagemagick
find ${FOLDER} -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

#resize jpg only to either height or width, keeps proportions using imagemagick
find ${FOLDER} -iname '*.jpg' -exec convert \{} -verbose -resize "$WIDTH"x"$HEIGHT"\> \{} \;

# alternative
#mogrify -path ${FOLDER} -resize ${WIDTH}x${HEIGHT}% *.png -verbose