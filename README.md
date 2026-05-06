# dotfiles

自分の開発環境（zsh, vim, tmux等）の設定ファイルを管理するリポジトリです。

## 管理対象
- zsh (`.zshrc`, `.zsh_plugins.txt`, `.zsh_plugins.zsh`)
- vim (`.vimrc`)
- tmux (`.tmux.conf`)
- git (`.gitconfig`)
- .config (`gh`, `iterm2` 等)

## セットアップ手順

新しい環境で以下のコマンドを実行することで、設定を反映させることができます。

```bash
git clone <repository-url> ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

## 管理方法
新しい設定ファイルを追加する場合は、以下の手順で行います。
1. 設定ファイルを `~/dotfiles` に移動する（ディレクトリ構造を維持）。
2. `install.sh` の `FILES` 配列（または `CONFIG_FILES` 配列）にファイル名を追加する。
3. `install.sh` を実行してシンボリックリンクを作成する。
4. 変更をコミットしてプッシュする。
