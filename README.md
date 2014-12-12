# webcam test 002

## 概要
カメラで撮影した画像をWebSocket経由で別ページに表示する

### 準備
    bundle install --path .bundle

### サーバ起動
    bundle exec rackup -p 3000 -E production -s thin

### 接続先URL

#### カメラ
http://localhost:3000

#### 表示
http://localhost:3000/view
