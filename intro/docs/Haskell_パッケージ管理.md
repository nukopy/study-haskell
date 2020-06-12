# Haskell パッケージ管理

## Haskell プロジェクトへのパッケージ追加方法

`stack new [project-name]`，`stack setup` が済んでいる状態

1. package.yaml のトップレベルの depedencies に必要なパッケージを追加
2. stack build
3. `Recommended action: ~~` で出てきたパッケージ名を stack.yaml の extradeps にコピペ追加する
4. 再度 stack build

ちなみに dev-dependencies は package.yml には書かない．`stack build hlint`，`stack install hlint` などとしてインストールし，`stack exec -- hlint` などと呼び出す．
