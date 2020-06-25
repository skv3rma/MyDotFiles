#!/bin/bash -

TRAINING_SCREENSHOTS_HOME="$HOME/Projects/trainings/screenshots"
# lines=$(grep -c "" ./train_java.csv)
# lines=`cat ./train_java.csv | wc -l`
# topicsFilePath="$HOME/Projects/trainings/train_java.csv"
# lines=$(wc -l < $CURRENT_TRAINING)
# echo "WC lines : $lines"

# skip the first row
# replace , with | -> replace " with empty string
# pass to dmenu
selectedTopic=`tail -n +2 $HOME/Projects/trainings/train_java.csv \
	       | sed "s/,/|/g;s/\"//g" \
	       | dmenu -l $(($lines - 1)) -nb "#2e3440" -sb "#88c0d0" -sf "#2e3440"`

# echo $selectedTopic >> $HOME/Projects/trainings/completed_$fileName
echo "$selectedTopic"

# tokenize by | and take the second column value
pText=`echo $selectedTopic \
       | awk -F'|' '{ print $2 }' \
       | sed "s/ /\n/g;s/\"//g"`

echo "$pText"

# replace spaces with -
screenshotPrefix=`echo $pText | sed "s/\n/-/g;s/ /-/g"`
echo $screenshotPrefix

screenshotFile=$screenshotPrefix-"$(date '+%y%m%d').png"
echo $screenshotFile

# take screenshot of the active window
maim -B -u -m 9 -i "$(xdotool getactivewindow)" "$TRAINING_SCREENSHOTS_HOME/$screenshotFile"

# possible values : east, west, north, south, northeast, nortwest, northsouth, southeast etc
drawFrom="center"
padding="0"
fill="#88c0d0"
stroke="#2e3440"
fontFile="$HOME/.local/share/fonts/COOPBL.TTF"

### draw on image
convert -gravity $drawFrom \
	-font $fontFile \
	-pointsize 140 -fill "$fill" \
        -stroke "$stroke" -strokewidth 10 -draw "text $padding,$padding '$pText'" \
        -stroke none                      -draw "text $padding,$padding '$pText'" \
	"$TRAINING_SCREENSHOTS_HOME/$screenshotFile" \
	"$TRAINING_SCREENSHOTS_HOME/thumbnail-$screenshotFile" \

### append logo image
convert  "$TRAINING_SCREENSHOTS_HOME/thumbnail-$screenshotFile" \
	 "$TRAINING_SCREENSHOTS_HOME/assets/resized_java_logo.png" -gravity east -composite -matte \
	 "$TRAINING_SCREENSHOTS_HOME/thumbnail-$screenshotFile"

