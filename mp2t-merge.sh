#!/bin/sh

# Get the output file name
output=$1
if [ -z "$output" ]; then
  output="output.mp4"
fi

# Get length of segment in the current repo
seglen=`ls -la segment*.ts | wc -l`
if [ -z "$seglen" ]; then
  echo "Not segment file found"
  exit 1
fi

# Clean temp files
bin=`rm -f all.ts`

# Concat segments into one
a=1
while [ "$a" -le $seglen ]
do
  bin=`cat segment$a.ts >> all.ts`
  a=`expr $a + 1`
done

# Run ffmpeg to reencode the audio
bin=`ffmpeg -i all.ts -bsf:a aac_adtstoasc -vcodec copy $output`
echo $bin

# Delete temp files
bin=`rm -f all.ts`
