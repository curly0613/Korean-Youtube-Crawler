#!/bin/bash
trap "exit" INT

target_dir=$1
filter_dir=$2

# "Limi" : 영어 처리?
# black list : Scandal news Korea, Breaking News 24/7, ATS News, 드라마 Drama TV, 한국 오락8.966.808, Car 365, Korean News, 뉴스스타Health, filipe giesteira,
#               LAVANDER 24H, Tips Health, Daily News, VN22Q Korea News, Breaking News, LVT channel, 

declare -a arr=("하루" "요청" "일상" "인사" "안녕" "하이" "반갑" "환영" "사랑" "행복" "소개" "브이로그" "브이앱" "화장" "메이크업" "리뷰" "추천" "동화책" "강연" "세바시" "안녕자두야" "장삐쭈" "루씨" "오즈뷰티" "빙빙" "독서대장" "소프" "맛상무" "얌무" "JM" "밍꼬발랄" "펭귄몬스터" "아토박스" "흑열전구" "아뽀키" "타로졔졔" "리수" "네이처갤러리" "뀨뀨뿌뿌" "소낙비다육" "멘지" "라몽" "이루리" "우데카" "하얀트리" "득TV" "왔어맥선생" "보라끌레르" "닥터시사" "위드필라테스" "코브")

for kw in "${arr[@]}"
do
  youtube-dl --verbose --download-archive ./kr-downloaded.txt --no-overwrites -f mp4 --restrict-filenames --youtube-skip-dash-manifest --prefer-ffmpeg --socket-timeout 20  --write-info-json -k --write-sub --sub-format ttml --sub-lang ko --convert-subs vtt ytsearch:"$kw" --exec "python ./crawler/process_kr.py {} '$filter_dir'"
done
