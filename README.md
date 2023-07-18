# README

## アプリケーション名
CHILD-SIZE

## アプリケーション概要
育児に勤しむ主婦(主夫)に向けて、子供の洋服や靴のサイズを記録し、管理します。

## アプリケーションを作成した背景
子供のサイズを忘れてしまうことがあり、本人が必ずいないと買えないということがきっかけでした。必要な時に分かっていると買い物の時間短縮に繋がり、オンライン購入も積極的に活用できると考えました！

## 洗い出した要件
https://docs.google.com/spreadsheets/d/11ctETBREdptwhO-tWWQ-qx1UrRW8Vhfo5UZUUrUYMgQ/edit#gid=2048147956

## 実装予定の機能
特定のフォロー機能を付けて、家族ユーザーでシェアできること,成長記録をつけられるような機能

## データベース設計
(https://i.gyazo.com/4e13d8edb3d7990ad6df878ce82750e3.png)

## 画面遷移図
(https://i.gyazo.com/8fd6b0ab6c3c1f7bf656de03217f997f.png)

## 開発環境


## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :tweets

## tweets テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| text               | string | null: false |
| image              | string | null: false |
| user_id            | string | null: false |

### Association

-belongs_to :user
-has_many :comments

## comments テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| comments_text| string     |                                |
| tweet_id     | references | null: false, foreign_key: true |
| user_id      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :tweet