# README

##users テーブル

| Column     | Type   | Options     |
| -----------| -------| ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association
 


##prototypes テーブル

| Column     | type   | Options     |
| -----------| -------| ----------- |
| title      | string | null: false |
| catch_copy | string | null: false |
| concept    | string | null: false |
| image      | text   | null: false |
| user       | text   | null: false |

### Association



##comments テーブル

| Column     | type       | Options     |
| -----------| ---------- | ----------- |
| text       | text       | null: false |
| user       | references | null: false |
| prototype  | references | null: false |

### Association














