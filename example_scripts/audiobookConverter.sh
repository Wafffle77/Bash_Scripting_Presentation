#!/bin/bash

find . -name '*.mp3' -size +1k -print0 | xargs -0 -P12 -i ffmpeg -i "{}" -vn -c:a libfdk_aac -profile:a aac_he -q:a 4 "{}.m4a"
FFMPEG_STATUS=$?
find . -name '*.mp3.m4a' -print0 | xargs -0 -P0 -n64 rename '.mp3.m4a' '.m4a'
if [ $FFMPEG_STATUS -eq 0 ]; then
  echo "All files have been converted."
  echo "Run \"find . -name '*.mp3' -delete\" to delete all remaining mp3 files."
else
  echo "FFMPEG status: $FFMPEG_STATUS"
  echo "Some problems occurred. Some files may have been converted, but be sure to check that all were before deleting any."
fi
beep
