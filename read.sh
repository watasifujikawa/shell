#!/bin/bash
#########
#シェル名read.sh
#テキストファイルからテキストを読み込んで１つ検索させる
#フォルダの下を特定のファイルを指定して検索する
#第１引数にファイルのフルパスor相対パス
#第２引数に検索したい文字列
########
file_path="$1"
serch_string="$2"
echo "スタート"

if [ ! -f "$file_path" ]; then
	echo "指定されたファイルが存在しません"
	exit 1;
fi

grep_result=$(grep "$serch_string" "$file_path" );

if [ -n "$grep_result" ]; then
	echo "検索結果:"
	echo "$grep_result"
else
	echo "指定された文字列は、ファイル内に見つかりませんでした"
fi
