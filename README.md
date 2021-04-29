# YouTube-Speech-Crawler: Automatic Dataset Construction for Speech Recognition from YouTube Videos
# 2019.06

## Installation
```
git clone https://github.com/hatddum/Korean-Youtube-Crawler.git
pip install -r requirements.txt
```

### youtube-dl의 버전 변화로 인해 현재 동작하지 않습니다.

## Running crawler
```
sh ./crawler/kr_corpus.sh <유튜브 영상 및 자막 원본 경로> <추출 음성 데이터 경로>
```

## 검색 키워드 추가
```
crawler/kr_corpus.sh line 12, arr에 추가
```

## ToDO list
```
1. 음성 합성 유튜브 제외?
    -> 학습을 통한 합성 음성 제거 or black list 유튜브 채널 영상 사용x (crawler/kr_corpus.sh에 black list 기록)

2. 숫자 변환
    ->정교한 숫자+단위 변환 알고리즘 필요 (crawler/youtube_helpers_kr.py의 int_to_kr 함수 수정)
```

## Citation

@article{lakomkin2018kt,
  title={KT-Speech-Crawler: Automatic Dataset Construction for Speech Recognition from YouTube Videos},
  author={Lakomkin, Egor and Magg, Sven and Weber, Cornelius and Wermter, Stefan},
  journal={EMNLP 2018},
  pages={90},
  year={2018}
} Korean-Youtube-Crawler
