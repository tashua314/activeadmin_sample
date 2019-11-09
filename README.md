# 手順
1. bundle install
1. rake db:migrate
1. rake db:seed
1. EDITOR=/usr/bin/vi rails credentials:edit
  - AWSのアクセスキーとシークレットキーを入力

1. /admin/loginにアクセス
  - admin@example.com / password (seedに記載）
