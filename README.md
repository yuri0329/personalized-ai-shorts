# 손가락 챌린지 1화: 무료 한국어 음성 합성

## 준비
- Python 3.10 권장, Git, ffmpeg, ffprobe, 인터넷(최초 모델 설치 및 다운로드만 필요)
- Linux / Docker 환경, CPU 가능(느릴 수 있음)
- 입력: `input.mp4` (24초, 540×960, 무음)

## 실행
```bash
cd /workspace/finger_tts_melotts
# Ubuntu/Debian 기반 컨테이너에 필요하면:
apt-get update && apt-get install -y ffmpeg git python3-venv
bash setup_and_run.sh
```

출력:
- `final_korean_voice.mp4`: 한국어 음성 합성 쇼츠
- `korean_dialogue_only.wav`: 대사만 담은 오디오
- `generated_voice/`: 대사별 생성 음성, 타이밍 JSON

영상 속 기존 자막과 대응하는 대사를 스크립트의 `SEGMENTS`에서 수정할 수 있습니다. 음색은 `VOICE`의 `pitch`와 `speed`를 수정하세요. 최초 실행 시 MeloTTS 모델을 다운로드하며, 인터넷이 필요합니다. 음성은 기본 KR 화자 하나를 신호 처리로 변조하므로 완전히 다른 두 성우가 아닙니다. 24초 고정 구간에 긴 대사가 들어가면 속도가 빨라질 수 있습니다.

## 라이선스 / 확인
- MyShell MeloTTS 코드: MIT. https://github.com/myshell-ai/MeloTTS
- MyShell MeloTTS-Korean 체크포인트: MIT. https://huggingface.co/myshell-ai/MeloTTS-Korean
- 입력 MP4에는 직접 촬영한 사진과 AI 제작 이미지가 포함되어 있으므로, 업로드 전 사용 권리와 로고/상표를 별도 점검하세요. 모든 법적 위험을 0으로 보증할 수는 없습니다.
- 영상에 타사 음악을 넣지 않았습니다.
