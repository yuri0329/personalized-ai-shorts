<div align="center">

# 🎬 Personalized AI Shorts

**Character-Aware Korean TTS for Short-Form Comedy**

`Python` · `MeloTTS` · `FFmpeg` · `Docker`

한국어 TTS에 캐릭터별 음성 스타일을 적용하는 24초 코미디 쇼츠 프로젝트

[▶ **Watch Demo on YouTube**](https://youtube.com/shorts/fnZh7C9Cs44)

</div>

## 🎥 Demo — Episode 01

<div align="center">

[![엄지와 소시지 — Episode 01](https://img.youtube.com/vi/fnZh7C9Cs44/hqdefault.jpg)](https://youtube.com/shorts/fnZh7C9Cs44)

</div>

| Character | Voice Style |
|:--|:--|
| 🌭 Sausage | 높은 피치 · 빠른 말투 · 신나는 느낌 |
| 👍 Thumb | 낮은 피치 · 느린 말투 · 황당한 느낌 |

## ⚙️ Processing Pipeline

<div align="center">

<sub>**Korean Script** → **MeloTTS** → **Pitch / Tempo Styling** → **Timeline Sync** → **MP4**</sub>

</div>

## 🛠 Technical Highlights

- **Korean TTS:** MeloTTS 기반 대사 생성
- **Character Styling:** FFmpeg `asetrate`, `aresample`, `atempo`로 피치·속도 조절
- **Audio Sync:** 대사별 시간 구간 편집 및 24초 영상에 합성
- **Output:** AAC 오디오가 포함된 MP4 제작 및 검증

> MeloTTS에 감정을 직접 학습시킨 것이 아니라, **음성 신호 후처리**로 캐릭터별 분위기를 연출했습니다.

## 🚀 Run

**Requirements:** Python 3.10 권장 · FFmpeg · Git · Linux/Docker

```bash
cd /workspace/finger_tts_melotts
bash setup_and_run.sh
```

**Input:** `input.mp4` (24s, 540×960)  
**Output:** `final_korean_voice.mp4`, `korean_dialogue_only.wav`

> 재현하려면 스크립트가 참조하는 음성 생성 코드와 입력 영상이 필요합니다. 공개 저장소에 파일이 없다면 별도로 준비해야 합니다.

## 🔭 Next Steps

캐릭터별 음성 프리셋 자동화 · 대사 싱크 검증 · 감정형 TTS 비교

## 📄 Credits & Rights

[MeloTTS (MIT)](https://github.com/myshell-ai/MeloTTS) · [Korean checkpoint](https://huggingface.co/myshell-ai/MeloTTS-Korean) · [YouTube Demo](https://youtube.com/shorts/fnZh7C9Cs44)

영상·이미지·음성 등 개별 에셋의 공개·상업적 사용 권리는 별도 확인이 필요합니다.
