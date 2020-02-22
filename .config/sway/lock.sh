#!/bin/bash

images=()
swaylock_args=()

for output in $(swaymsg -t get_outputs | jq -r '.[] .name'); do
  image=$(mktemp --suffix=.png)
  images+=($image)
  swaylock_args+=(-i $output:$image)
  grim -o $output $image
done

#printf '%s\n' "${images[@]}" | xargs -P 0 -I{} convert -blur 0x8 {} {}
for image in ${images[@]}; do
    corrupter -mag 6 -boffset 35 ${image} ${image}
done

swaylock ${swaylock_args[@]} -s center -f
rm ${images[@]}
