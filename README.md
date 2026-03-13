# LostArkWatcher

실행 파일(`.exe`)은 아래 링크에서 바로 확인하고 다운로드할 수 있습니다.

- [exe 폴더로 이동 (dist)](./dist/)

## 다운로드 방법

1. 위 링크를 눌러 `dist` 폴더로 이동합니다.
2. 원하는 `.exe` 파일을 선택합니다.
3. 파일 화면에서 **Download raw file** 버튼으로 다운로드합니다.

## 자동 업데이트

- `LostArkWatcher.exe`를 실행하면 시작 후 자동으로 최신 exe를 확인합니다.
- 최신 파일이 있으면 자동 다운로드 후 실행 중인 exe를 교체하고 앱을 재시작합니다.
- 기본 확인 대상은 `Jeong-Jin-Yong/LostARKAccessoriesAlarm` 저장소의 `dist/LostArkWatcher.exe`입니다.

### 자동 업데이트 환경변수(선택)

- `LOSTARK_UPDATE_REPO`: 업데이트 원본 저장소(`owner/repo`), 기본값 `Jeong-Jin-Yong/LostARKAccessoriesAlarm`
- `LOSTARK_UPDATE_REF`: 조회 브랜치/태그, 미지정 시 저장소 기본 브랜치 자동 사용
- `LOSTARK_UPDATE_EXE_PATH`: 저장소 내 exe 경로, 기본값 `dist/LostArkWatcher.exe`
