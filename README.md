# framework-server
## 포트번호 설정
vi .env
HOST_PRT={개인 할당 포트번호 입력} (ppt참조)

## 서버 이미지 빌드
docker compose build

## 서버 컨테이너 실행
docker compose up 

## 서버 컨테이너 삭제
docker compose down

## 기존 서버 상태로 컨테이너 재생성
### 이미지 교체
docker compose build <br>
docker compose up
### 컨테이너만 교체
docker compose down <br>
docker compose up
