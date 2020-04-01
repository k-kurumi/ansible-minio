# ansible-minio

minioのplaybook

## 事前にインストールしておくもの

- python 3.8 (pyenvなどでインストール)
- pipenv (pip install pipenvなどでインストール)
- vagrant
- virtualbox

## 使い方

1. VM作成など

VM起動
```
make up
```

ansibleインストール
```
make init
```

接続確認(失敗時は2回実行する(VM作成後初回に失敗することがある))
```
make ping
```

2. プレイブック適用

```
make apply
```

3. 動作確認

VMにログイン
```
make ssh
```

バケットが作成できることの確認
```
s3cmd mb s3://test1
```

supervisorの確認
```
sudo supervisorctl status
```
