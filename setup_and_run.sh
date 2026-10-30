#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if ! command -v ffmpeg >/dev/null; then
  echo 'ffmpeg is required: apt-get update && apt-get install -y ffmpeg'
  exit 1
fi
if [ ! -d .venv ]; then
 python3 -m venv .venv
fi
source .venv/bin/activate
python -m pip install --upgrade pip setuptools wheel
if [ ! -d MeloTTS ]; then
 git clone --depth 1 https://github.com/myshell-ai/MeloTTS.git
fi
python -m pip install -e ./MeloTTS
python -m unidic download
python -m pip install soundfile numpy
python generate_and_mix.py "$@"
