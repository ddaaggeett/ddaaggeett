<link href="../css/styles.css" rel="stylesheet" />

file **.mp4** to file **.wav**:

    ffmpeg -i input.mp4 -vn -acodec pcm_s16le -ar 44100 -ac 2 output.wav
