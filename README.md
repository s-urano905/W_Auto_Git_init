# W_Auto_Git_init
ローカルでGitを使う。

## 用意するもの
C:の下にGit_Sourceというフォルダを作る。

SourceTree。

gitのちょっとした知識。

## batファイルの概要
Git_Sourceの中にP_*,V_*,W_*の3つのフォルダを作成するbatファイルです。

git init や リモートリポジトリの設定などを自動で行います。

SourceTreeにはW_で始まるものをAddで追加してください。

V_から始まるファイルをリモートリポジトリ（ローカル）として機能させます。

batファイルでSourceTreeを開くようにしているが必要なければ消す。

## 使い方
任意のフォルダにW_Auto_Git_init.batを置く。

その後、Winキー+Rで「shll:sendto」と入力しEnter、その中にW_Auto_Git_init.batの任意の名前でショートカットを作る。

バージョン管理したいフォルダを右クリック→送るから任意で付けた名前のショートカットを選択。

すると、Git_Sourceフォルダの中にP_＊のフォルダができ中にV_＊.gitとW_＊フォルダができる。

あとは概要の通りW_＊のフォルダをSourceTreeのAddで追加するだけ。

参考：「https://samehack.com/git-local/」「ChatGPT」
