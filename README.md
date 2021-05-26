# 使い方
1. Dockerを起こしておく
1. 全ファイルの`[username]`部分を各々の学籍番号(苗字+名前+番号の6桁のやつ) に置き換える
1. ( `classes`ディレクトリにclassファイルをセットする )
1. VSCodeの左下のマークを押して`Reopen in Container`を選択
1. `localhost:8080/webapps/[Javaファイルで設定したアノテーション(urlPatterns="...")]`にアクセス

# その他
- 起動後に`classes`ディレクトリに配置したclassファイルを反映させる時はターミナルに`setclass`と打つ
- CLASSPATHを設定しているので`javac`が使える
