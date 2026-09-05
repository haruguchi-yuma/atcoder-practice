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

Zedのタスクは `cmd-shift-P` → `task: spawn` から実行。

1. **ディレクトリを作る** — `abc/999/` を作り、`a.rb` 〜 `d.rb` を置く
2. **サンプルを落とす** — 問題ページのURLをコピーして `oj: download samples`
   （`pbpaste` を読むので、**URLをクリップボードに入れてから**実行。落ちてくる先は `test/`）
3. **実行** — `ruby: run`（`$ZED_FILE` をそのまま実行、標準入力は手打ち）
4. **テスト** — `oj: test ruby`（`test/` 配下の全ケースを検証）
5. **提出** — `oj: submit ruby`（`-l 6087` = Ruby）

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
