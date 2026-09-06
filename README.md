# atcoder-practice

## 環境

- Ruby / エディタ: Zed
- 提出: [online-judge-tools](https://github.com/online-judge-tools/oj)
- タスク定義: `.zed/tasks.json`

## 初回セットアップ

```bash
pip install online-judge-tools
oj login https://atcoder.jp/
```

## 問題を解く手順

1. **ディレクトリを作る** — `mkdir -p abc/456/d && cd abc/456/d`
2. **サンプルを落とす** — 問題ページのURLをコピーして `oj: download samples`
   → `abc/456/d/test/` に入る
3. **`d.rb` を書く** — ファイル名は問題記号に合わせる
4. **実行** — `ruby: run`
5. **テスト** — `oj: test ruby`
6. **提出** — `oj: submit ruby`（`-l 6087` = Ruby）

`oj d` と `oj t` は `$ZED_DIRNAME` を見るので、**問題ディレクトリ内のファイルを開いた状態**でタスクを実行すること。

## 詰まったとき

- サンプルが落ちない → クリップボードにURLが入っているか
- テストが空振り → `test/` が問題ディレクトリ直下にあるか（`oj d` の実行時のcwd）
- 提出が弾かれる → `oj login` の再実行
- 言語IDが変わった → `oj s --guess-cxx-latest` などで確認、`tasks.json` の `6087` を更新

## ディレクトリ構成

| パス | 内容 |
|---|---|
| `abc/` | ABC過去問 |
| `tessoku-book/` | 競技プログラミングの鉄則 |
| `typical90/` | 競プロ典型90問 |
| `kakomon_100_cyukyu/` | 過去問精選 |
| `virtual/` | バチャの記録 |
| `review.md` | 解き直し待ちリスト |
