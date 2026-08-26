![2025版参考](https://raw.githubusercontent.com/ennm666/MyList/refs/heads/main/Config/V_compress/Presets_by_Xiaoin.png)


| 编码格式 | 硬件类型 | 3FUI编码器名称 | 推荐预设(Preset) | 推荐质量(Quality) | 设置理由 | 避坑说明 |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| H.264(AVC) | CPU | libx264 | Medium | 23 | 性价比最高，画质/体积/速度最平衡。再快画质会崩，再慢肉眼看不出区别，Medium刚刚好。 | 追求极限速度可选 fast，但画质会下降。 |
| H.265(HEVC) | CPU | libx265 | Medium | 25 | 能把体积压到极致，但比H.264还要慢。 | 慎用！除非你想一边睡觉一边挂机。 |
| H.265(HEVC) | N卡 | hevc_nvenc | p4 | 29 | p4是速度画质最佳平衡点。H.265效率高，质量设29依然清晰。 | 29是针对4K/高码率的建议，压1080P可改回26。 |
| H.265(HEVC) | I卡 | hevc_qsv | medium | 24 | 质量值24是Intel性价比最高的位置 | Intel 的 medium 优化得最好，没必要去改，虽然体积会比 N 卡大一丢丢，但画质绝对对得起这个体积， |
| H.265(HEVC) | A卡 | hevc_amf | balanced | 28 | A卡的编码器相对弱一点，所以我们把数值稍微设小一点点，给它一点画质补偿。 | 记得选 balanced，选 speed 画质损失明显。 |
| AV1 | CPU | libsvtav1 | 8 | 34 | 8是民用CPU的最佳档位。 | 千万别选 3 以下！那是给超算跑的。 |
| AV1 | N卡 | av1_nvenc | p1 | 36 | AV1算法太强，即便用最快的p1预设，画质也足够好。 | 必须 RTX 40系起步 |
| AV1 | I卡 | av1_qsv | medium | 34 | Intel 的 AV1 编码器非常标准，设为 34，就能榨干 AV1 的压缩性能。 | 必须 Arc独显 或 Ultra核显。 |
| AV1 | A卡 | av1_amf | balanced | 34 | A卡如果选 Quality (质量) 模式，速度下降得有点厉害；如果选 Speed，画质又掉得太快。Balanced 是刚刚好的 | 必须 RX 7000系 或 780M。 |
