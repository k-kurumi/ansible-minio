# ansible-minio

minioのplaybook

## 事前にインストールしておくもの

- python 3系 (python 3.8.2で確認済み)
- vagrant
- virtualbox

## 使い方

1. VM作成など

    VMの起動
    ```
    $ make vm_up
    ```

    ansibleのインストール
    ```
    $ pip install -r requirements.txt
    ```

    接続確認(失敗時は2回実行する(VM作成後初回に失敗することがある))
    ```
    $ make ansible_ping
    ```

2. プレイブック適用

    ```
    $ make ansible_apply
    ```

3. 動作確認

    VMにログイン
    ```
    $ make ssh_vagrant
    ```

    バケットが作成できることの確認
    ```
    $ s3cmd mb s3://test1
    ```

    supervisorの確認
    ```
    $ sudo supervisorctl status
    ```

4. VMの削除

    ```
    $ make vm_destroy
    ```
