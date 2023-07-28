@echo off

REM フォルダ名を取得し、リネームする
set "source_folder=%~1"
set "d_folder=C:\Git_Source\"
set "destination_folder_P=%d_folder%P_%~n1"
set "destination_folder_V=%destination_folder_P%\V_%~n1.git"
set "destination_folder_W=%destination_folder_P%\W_%~n1"

REM リネーム後のフォルダを作成
mkdir "%destination_folder_P%"
mkdir "%destination_folder_V%"
mkdir "%destination_folder_W%"

REM フォルダをコピー
xcopy "%source_folder%" "%destination_folder_W%" /E /I /Y

REM バージョン管理用ディレクトリ内に移動
cd %destination_folder_V%

REM リモートリポジトリとして初期化
git init --bare --shared

REM ワークツリーディレクトリに移動
cd %destination_folder_W%

REM gitの初期化
git init

REM リモートリポジトリを設定
git remote add origin %destination_folder_V%

pause