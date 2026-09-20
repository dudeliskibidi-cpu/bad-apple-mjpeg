ffmpeg -i badapple.mp4 \
  -vf "scale=320:240:force_original_aspect_ratio=increase,setsar=1:1,fps=15" \ # Scaling to 320x240
  -t 00:00:30 \ # Limit to 30 seconds
  -vcodec mjpeg \ # Use the MJPEG codec
  -q:v 24 -an \ # Quality and no audio
  output.mjpeg
  
