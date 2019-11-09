# 手順
1. bundle install
1. rake db:migrate
1. rake db:seed
1. EDITOR=/usr/bin/vi rails credentials:edit
   - AWSのアクセスキーとシークレットキーを入力

1. `config/storage.yml` の記述（バケット名など）に違いがあれば修正
1. /admin/loginにアクセス
   - admin@example.com / password (seedに記載）

1. blogを画像をつけて新規作成
1. showの画面にて、画像を確認
