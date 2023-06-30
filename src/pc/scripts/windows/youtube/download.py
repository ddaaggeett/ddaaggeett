# python script for windows to download specified youtube video to specified directory
# run from same directory as yt-dlp.exe
# run: python ./download.py

import subprocess

YTDL_PATH = r"C:\Users\Dave\youtube\yt-dlp.exe"

video_url = input("Enter the YouTube video URL: ")
output_dir = input("Enter the relative output directory: ")

subprocess.call([YTDL_PATH, '-o', output_dir + r'\%(title)s.%(ext)s', video_url])
