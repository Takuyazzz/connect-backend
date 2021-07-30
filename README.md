# アプリケーション名
 ## Connect
# アプリケーションの概要
  このアプリケーションは、会津大学生を対象にしています。　Q&Aアプリケーションで、生徒がわからなかった問題を教えてもらったり、授業で聞き逃したときに質問するなど、生徒が困らずに充実した学校生活を送ってもらえるようなアプリケーションを作りました。
# URL

アプリケーション： https://aizu-connect.herokuapp.com

バックエンド(Github)： https://github.com/Takuyazzz/connect-backend

# テスト用アカウント

メールアドレス: test@test.com

パスワード: SWwR3QvRrzbz

# 利用方法

まず、初期状態でアカウントがゲストとなっています。
ゲストでも質問、返信は可能ですが、マイページでその質問を見返すことはできません。
また、ゲストですと通知も届かないようにしています。

## サインイン、サインアップ方法
 1. 質問一覧が表示されます。
 2. 右上のドロップダウンメニューからサインインボタンを押します。
 3. サインページでメールアドレスに test@test.com, パスワードに SWwR3QvRrzbz　と入力してください。
![サインイン](https://user-images.githubusercontent.com/69229592/127593987-5af12f08-b857-4b96-ab94-f7c7ee5115db.gif)

## 質問投稿方法
 1. サインインしますと、右下の 質問する を押してください。
 2. 質問投稿ページでは、　匿名での投稿、タグ選択、質問内容ではmardown記法が使えます。
 3. 質問を書き終えますと、質問投稿　を押してください。
 4. 質問一覧に投稿した質問が表示され、無事投稿完了です。
![質問投稿](https://user-images.githubusercontent.com/69229592/127594026-93784e1e-f1db-40c0-865a-90d11b771552.gif)

## 返信投稿方法
 1. 質問一覧ページで質問を押し、質問詳細へ移ります。
 2. 質問詳細の下部に返信用のフォームがありますので、そこに返信内容を書いてください。
 3. 書き終わりますと、右下の　回答投稿　をしてください。
 4. 質問詳細に返信内容は表示されますので、返信完了です。
![返信投稿](https://user-images.githubusercontent.com/69229592/127594060-4739fa61-7710-47e5-929b-e55701188258.gif)

## マイページ
 過去の質問を振り返りたい場合、マイページが役立ちます。ここでは、自分が投稿した質問が表示されます。
 1. 右上のドロップダウンメニューから、マイページ　を押してください。
 2. ユーザー名、メールアドレス、いいね数と質問が表示されます。
![マイムービー](https://user-images.githubusercontent.com/69229592/127594495-2a13e745-66a9-4b8a-8bcb-cc94c315f87b.gif)

# 目指した課題解決
このアプリケーションは特に以下のような悩みを持つ学生を想定しています。
- 友達がいなくて相談できない
- 対面で質問するのが恥ずかしい
- コロナが怖くて人と対面で話すのが怖い
これらの課題を解決する方法としてweb上で質問をし、悩みを解消することがいいと思いました。

# 要件定義
## 背景
- ぼっちの会津大学生を救いたい。ストレスなく、学校生活を楽しみたい。

## 目的
- 要件定義を書く。
- ER図や、画面設計などを書く。
- 要件定義をもとにコーディングする。
- 実際にリリースして、アクセス数を確認する

## ペルソナ
- 会津大学生
  - ぼっち
  - 授業の情報を集められない(聞き逃してしまったときなど)
  - テスト対策で困ってる

## システム化の範囲
- ### Q&Aアプリケーション
  - アカウント
  - いいねボタン(無限に押せる)
  - 質問タグを作る
  - 匿名質問
  - 検索機能
  - ソート機能
## フロー(期限)
- 設計(~5/12)
 - 要件定義
 - クラス図
 - ER図
 - 画面遷移図
- コーディング(6/1~)
 - 画面
  - サインアップ
  - ログイン
  - 質問一覧
  - 質問詳細(返信を含む)
  - 質問投稿画面
 - いいねボタン
 - タグ機能
 - 検索機能
## システム化後のフロー
- Googleアナリティクスの導入
- webのQRコードを学校の掲示板に貼る
- 他機能の追加
## 外部連携の有無
- バイト情報
- 学割情報

# 実装予定の機能
- つぶやき
  - 掲示板
   - 学祭、イベント、サークル告知
   - 〜仲間募集
- チャット
  - 友達を追加
  - トークルーム
  - グループトーク

#　クラス図
<img width="485" alt="クラス図" src="https://user-images.githubusercontent.com/69229592/127596904-da29db03-7a1a-4c5e-9a6c-272494c89661.png">

# ER図
<img width="363" alt="スクリーンショット 2021-07-05 8 33 31" src="https://user-images.githubusercontent.com/69229592/124402526-b8681480-dd6b-11eb-8c3c-175bd3a96915.png">


# 画面設計
<img width="914" alt="スクリーンショット 2021-07-30 12 07 43" src="https://user-images.githubusercontent.com/69229592/127593933-58f2b097-d153-42d9-b2f5-d396c085f26a.png">

# ローカルでの動作方法
https://github.com/Takuyazzz/connect-frontend, https://github.com/Takuyazzz/connect-backendからクローンしてください。
 - frontendの場合
 1. npm install
 2. npm run serve
 - backendの場合
 envファイルに必要事項を書いてください。
 1. bundle install
 2. rails db:create
 3. rails db:migrate
 4. rails db:seed_fu
 5. rails s
