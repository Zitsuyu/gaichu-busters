## Gaichu-Busters
害虫の画像を投稿して、対策法を聞く質問アプリです。<br>
スマートフォンでの使用を想定しているため、レスポンシブ対応をしています。<br>
男女問わず使用することを想定し、トップページでは画像にモザイクをかけています。<br>
<br>
<p>
<img width="351" alt="スクリーンショット 2022-08-09 14 27 36" src="https://user-images.githubusercontent.com/106902284/183571856-3686f8ac-614e-4cd5-b96a-3ec3d1ee6dde.png">
<img width="340" alt="スクリーンショット 2022-08-08 12 03 22" src="https://user-images.githubusercontent.com/106902284/183572975-133e9508-0305-4e6f-927c-29e3b3dfd39a.png">
</p>
## URL
https://gaichu-busters.herokuapp.com/

## テスト用アカウント
- Basic認証ID:xxx
- Basic認証パスワード:0920
- メールアドレス:a@yahoo.co.jp
- パスワード:11111111
## データベース設計
![モデル](https://user-images.githubusercontent.com/106902284/183321002-d7a4c3c2-a257-470e-8802-7622e1b9c999.png)

## アプリケーションを作成した背景
11年ぶりに実家に戻り、プログラミングの勉強を開始し始めたある日、部屋に見慣れない虫が現れました。見たことがない虫で対処の方法がわからないまま右往左往していると、いつの間にかその虫は消えてしまいました。<br>こんな時、画像を投稿すると虫の特定や対処の方法を教えてくれるアプリがあると便利だと考えて開発しました。

## 機能一覧
- ユーザー登録、ログイン機能(devise)<br>
- 投稿機能<br>
    - 画像投稿(ActiveStrage)
    - プルダウン選択(ActiveHash)
- 検索機能(ransack)

## 使用技術
- HTML, CSS<br>
- ruby<br>
- ruby on rails<br>
- MySQL<br>
- AWS S3<br>
- RSpec<br>

## テスト
- 単体テスト(RSpec)


