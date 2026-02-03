# todo

Flutter + AWS Amplify で作ったシンプルな Todo アプリです。
ローカルに保存しつつ、サインインしたユーザーのタスクをクラウドに同期します。

## Web サンプル
- https://todo.sinnchan.com/

## できること
- タスクの作成・更新・削除
- 完了/未完了の切り替え
- 作成日時・更新日時・タイトル・日時での並び替え
- サインイン（メール認証）
- ローカル永続化とクラウド同期

## 構成
- フロントエンド: Flutter（Riverpod, GoRouter, Hive）
- バックエンド: AWS Amplify Gen 2
- 認証: Cognito（Email）
- データ: GraphQL API + DynamoDB

## ディレクトリ構成
- `frontend/` Flutter app
- `backend/` Amplify backend 定義
- `amplify.yml` Amplify のビルド設定

## 起動方法

```
  flutter run -d {device-id} --dart-define ENV={prod/dev/sandbox}
```
// sandbox環境は`mise run amplify_sandbox`もあらかじめ実行する必要があります。
