# LINE Bot

LINE Botアプリケーション

## ファイル構造

```
linebot/
├── app.rb                          # メインアプリケーション
├── config/
│   └── environment.rb              # Sinatra設定
├── lib/
│   └── line_bot/
│       ├── client.rb               # LINE Bot APIクライアント
│       └── handlers/
│           ├── message_handler.rb  # メッセージハンドラー（ディスパッチャー）
│           ├── text_handler.rb     # テキストメッセージハンドラー
│           └── image_handler.rb    # 画像メッセージハンドラー
│           └── sticker_handler.rb  # スタンプメッセージハンドラー
├── .env                            # 環境変数（.gitignoreに含まれる）
├── .ruby-version                   # Ruby バージョン指定
├── Gemfile                         # Gemの定義
├── Gemfile.lock                    # Gemのロック
└── README.md                       # このファイル
```

## セットアップ

```bash
bundle install
```

## 実行

```bash
ruby app.rb
```

## 環境変数

`.env` ファイルに以下を設定してください：

```
LINE_CHANNEL_SECRET=your_channel_secret
LINE_CHANNEL_TOKEN=your_channel_token
```
