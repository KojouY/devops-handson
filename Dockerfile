# ベースイメージ（軽量な Python 3.12）
FROM python:3.12-slim

# 作業ディレクトリを設定
WORKDIR /app

# ローカルのファイルをコンテナにコピー
COPY . .

# Flask をインストール
RUN pip install --no-cache-dir flask

# コンテナ起動時に実行するコマンド
CMD ["python", "app.py"]
