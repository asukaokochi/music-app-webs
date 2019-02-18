# MUSIC SNS!!!
## 概要
LFSのWebS課題です。下に設計とかを書いていきます🙆‍

## コア機能
- ユーザ機能
- 投稿機能
- 検索機能

## DB設計
### ユーザ機能
|カラム名|内容|型|
|:-|:-|:-|
|user_name|ユーザー名を格納するカラム|string|
|password|パスワードを格納するカラム|string|
|profile_image|プロフィール画像のURLを格納するカラム|string|

### 投稿機能
|カラム名|内容|型|
|:-|:-|:-|
|comment|新規投稿の文字を格納するカラム|text|
|artist|アーティスト名を格納するカラム|string|
|album|アルバム名を格納するカラム|string|
|track|トラック名を格納するカラム|string|
|music_image|アルバムとかの画像のURLを入れるカラム|string|
|post_user|投稿者名を格納するカラム|string|
|user_id|ユーザーidを格納するカラム|integer|

## URI設計
|メソッド|URI|内容|
|:-|:-|:-|
|GET|/|投稿一覧画面。未ログインの場合は新規登録とログインボタンのある画面になる。|
|GET|/home|自分の画面。自分の投稿のみ表示される。|
|GET|/search|検索画面。フォームに入力して検索すると検索結果が出てくる|
|POST|/search|検索結果。|
|GET|/edit/:id|投稿のコメント編集画面。|
|POST|/delete/:id|投稿のコメント削除。|
|POST|/new|新規投稿画面|
|POST|/update/:id|投稿の更新機能をやってる画面（ユーザーからは基本見えない）|

## View設計
|ページ|内容|
|:-|:-|
|index.erb|投稿一覧画面。未ログインの場合は新規登録とログインボタンが出てくる|
|home.erb|自分のホーム画面|
|signin.erb|ログイン画面|
|signup.erb|新規登録画面|
|search.erb|検索画面|
|layout.erb|見た目部分|