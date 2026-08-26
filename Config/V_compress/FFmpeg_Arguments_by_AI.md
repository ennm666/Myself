FFmpeg参数

 ```BASH
 -c:v libx265 -crf 26 -preset fast -vf "fps=30,scale=-2:1080" -c:a copy -tag:v hvc1 -movflags +faststart
 ```

 > x265编码，适合4K(16:9 3840x2160)视频存档，分辨率等比缩放(16:9  1920x1080)1080p，帧率降到30fps，快速预设

 ```BASH
 -c:v libx264 -crf 23 -preset fast -vf "fps=30,scale=-2:1080" -c:a copy -movflags +faststart
 ```

 > 同上一个 但x264编码，兼容老设备，适合4K(16:9 3840x2160)视频存档，分辨率等比缩放(16:9 1920x1080)1080p，帧率降到30fps，快速预设

 ```BASH
 -c:v libx265 -preset fast -crf 26 -c:a copy -tag:v hvc1 -movflags +faststart
 ```

> x265编码 只压损一些视频体积，分辨率和帧率都保持不变，快速预设

 ```BASH
 -c:v libx264 -preset fast -crf 23 -c:a copy -movflags +faststart
 ```
 > 同上一个 但x264编码，兼容老设备，只压损一些视频体积，分辨率和帧率都保持不变，快速预设

 ```BASH
 -c:v libx265 -preset medium -crf 23 -pix_fmt yuv420p10le -x265-params "aq-mode=3:aq-strength=0.8:deblock=-1,-1" -c:a copy -tag:v hvc1 -movflags +faststart
 ```
 >x265编码 夜景 不用太多其他滤镜参数降噪，保留原本风格，分辨率帧率保持不变，中等预设,转换速度尚可

  ```BASH
 -c:v libx265 -vf "scale=1920:-2:flags=lanczos -preset medium -crf 23 -pix_fmt yuv420p10le -x265-params "aq-mode=3:aq-strength=0.8:deblock=-1,-1" -c:a copy -tag:v hvc1 -movflags +faststart
 ```
 >x265编码 夜景 不用太多其他滤镜参数降噪，保留原本风格，分辨率适合4K(16:9 3840x2160)视频存档，分辨率等比缩放(16:9 1920x1080)1080p帧率不变，中等预设,转换速度较快