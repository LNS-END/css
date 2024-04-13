#!/bin/bash

# 스크립트에 제공된 첫 번째 인자를 변수로 저장
ARCH=$1

make

# 인자에 따라 특정 실행 파일 삭제
if [ "$ARCH" == "x86" ]; then
    echo "Removing hello-world-aarch64..."
    rm -f hello-world-aarch64
elif [ "$ARCH" == "aarch64" ]; then
    echo "Removing hello-world-x86..."
    rm -f hello-world-x86
else
    echo "No valid architecture specified for removal."
fi
