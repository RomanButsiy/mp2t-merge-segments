# mp2t-merge-segments

Example, download segments in multiple streams
```
for i in {1..100}; do wget https://blackpearl.tortuga.wtf/content/stream/serials/doctor.who.s06e00.k1.mvo_34492/hls/480/segment$i.ts; done
for i in {101..200}; do wget https://blackpearl.tortuga.wtf/content/stream/serials/doctor.who.s06e00.k1.mvo_34492/hls/480/segment$i.ts; done
for i in {201..300}; do wget https://blackpearl.tortuga.wtf/content/stream/serials/doctor.who.s06e00.k1.mvo_34492/hls/480/segment$i.ts; done
for i in {301..400}; do wget https://blackpearl.tortuga.wtf/content/stream/serials/doctor.who.s06e00.k1.mvo_34492/hls/480/segment$i.ts; done
for i in {401..500}; do wget https://blackpearl.tortuga.wtf/content/stream/serials/doctor.who.s06e00.k1.mvo_34492/hls/480/segment$i.ts; done
for i in {501..600}; do wget https://blackpearl.tortuga.wtf/content/stream/serials/doctor.who.s06e00.k1.mvo_34492/hls/480/segment$i.ts; done
for i in {601..700}; do wget https://blackpearl.tortuga.wtf/content/stream/serials/doctor.who.s06e00.k1.mvo_34492/hls/480/segment$i.ts; done
for i in {701..741}; do wget https://blackpearl.tortuga.wtf/content/stream/serials/doctor.who.s06e00.k1.mvo_34492/hls/480/segment$i.ts; done
```
Make executable file `mp2t-merge.sh`: `chmod +x mp2t-merge.sh`

This script must be executed in the repo where the *.ts files are. It will concatenate the segments into one temp file which ffmpeg will reencode the audio track. By default the ouptup filename is output.mp4 but can be changed by providing the name as parameter.

ffmpeg is required

Example: `./mp2t-merge.sh doctor.who.s06e00.mp4`
