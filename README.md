# ElixirによるJSONパースアプリの練習課題

## 参照テキスト

- [Elixir入門「第1回：パターンマッチ＆パイプでJSONパースアプリをサクっと書いてみる」](
  https://www.slideshare.net/piacere_ex/elixir1json-81100124)
  - 2017/10/23 ver1.5 (Elixir 1.5検証済)


## ファイル内容

- crawl/lib/Crawl.ex -> Qiita API
- crawl/lib/Hatena.ex -> Hatena API
- crawl/lib/Wikipedia.ex -> Wikipedia API
- crawl/lib/Github.ex -> Github API

## 実行方法
```
# iex -S mix
iex> Crawl.get
...
iex> Hatena.get
...
iex> Wikipedia.get
...
iex> Github.get
...
```
