# pawafes DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :players

## playersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|position|string|null: false|
|dominant_throw|string||
|dominant_batting|string||
|level|string|null: false|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_one :1st-round
- has_one :1st-round_record
- has_one :2nd-round
- has_one :2nd-round_record
- has_one :3rd-round
- has_one :3rd-round_record
- has_one :4th-round
- has_one :4th-round_record
- has_one :semi-final-round
- has_one :semi-final-round_record
- has_one :final-round
- has_one :final-round_record
- has_one :total

## 1st-roundsテーブル
|Column|Type|Options|
|------|----|-------|
|opponent|string|null: false|
|manager|string|null: false|
|point_difference|integer|null: false|
|lost_point|integer|null: false|
|horisugi_doll|string|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player
- has_one :1st-round_team
- has_one :manager
- has_one :point

## 1st-round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|2base_hit|integer|null: false|
|3base_hit|integer|null: false|
|home_run|integer|null: false|
|sacrifice_bunt|integer|null: false|
|sacrifice_fly|integer|null: false|
|steal|integer|null: false|
|pitch|integer|null: false|
|straight_ball_out|integer|null: false|
|change_ball_out|integer|null: false|
|strike_out|integer|null: false|
|fly-liner_out|integer|null: false|
|roller|integer|null: false|
|double_play|integer|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player

## 1st-round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :1st-round

## 2nd-roundsテーブル
|Column|Type|Options|
|------|----|-------|
|opponent|string|null: false|
|manager|string|null: false|
|point_difference|integer|null: false|
|lost_point|integer|null: false|
|horisugi_doll|string|null: false|
|climate|string|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player
- has_one :2nd-round_team
- has_one :manager
- has_one :point

## 2nd-round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|2base_hit|integer|null: false|
|3base_hit|integer|null: false|
|home_run|integer|null: false|
|sacrifice_bunt|integer|null: false|
|sacrifice_fly|integer|null: false|
|steal|integer|null: false|
|pitch|integer|null: false|
|straight_ball_out|integer|null: false|
|change_ball_out|integer|null: false|
|strike_out|integer|null: false|
|fly-liner_out|integer|null: false|
|roller|integer|null: false|
|double_play|integer|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :2nd-round

## 2nd-round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :player

## 3rd-roundsテーブル
|Column|Type|Options|
|------|----|-------|
|opponent|string|null: false|
|manager|string|null: false|
|point_difference|integer|null: false|
|lost_point|integer|null: false|
|horisugi_doll|string|null: false|
|climate|string|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player
- has_one :3rd-round_team
- has_one :manager
- has_one :point

## 3rd-round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|2base_hit|integer|null: false|
|3base_hit|integer|null: false|
|home_run|integer|null: false|
|sacrifice_bunt|integer|null: false|
|sacrifice_fly|integer|null: false|
|steal|integer|null: false|
|pitch|integer|null: false|
|straight_ball_out|integer|null: false|
|change_ball_out|integer|null: false|
|strike_out|integer|null: false|
|fly-liner_out|integer|null: false|
|roller|integer|null: false|
|double_play|integer|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player

## 3rd-round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :3rd-round

## 4th-roundsテーブル
|Column|Type|Options|
|------|----|-------|
|opponent|string|null: false|
|manager|string|null: false|
|point_difference|integer|null: false|
|lost_point|integer|null: false|
|horisugi_doll|string|null: false|
|climate|string|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player
- has_one :4th-round_team
- has_one :manager
- has_one :point

## 4th-round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|2base_hit|integer|null: false|
|3base_hit|integer|null: false|
|home_run|integer|null: false|
|sacrifice_bunt|integer|null: false|
|sacrifice_fly|integer|null: false|
|steal|integer|null: false|
|pitch|integer|null: false|
|straight_ball_out|integer|null: false|
|change_ball_out|integer|null: false|
|strike_out|integer|null: false|
|fly-liner_out|integer|null: false|
|roller|integer|null: false|
|double_play|integer|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player

## 4th-round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :4th-round

## semi-final-roundsテーブル
|Column|Type|Options|
|------|----|-------|
|opponent|string|null: false|
|manager|string|null: false|
|point_difference|integer|null: false|
|lost_point|integer|null: false|
|horisugi_doll|string|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player
- has_one :semi-final-round_team
- has_one :manager
- has_one :point

## semi-final-round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|2base_hit|integer|null: false|
|3base_hit|integer|null: false|
|home_run|integer|null: false|
|sacrifice_bunt|integer|null: false|
|sacrifice_fly|integer|null: false|
|steal|integer|null: false|
|pitch|integer|null: false|
|straight_ball_out|integer|null: false|
|change_ball_out|integer|null: false|
|strike_out|integer|null: false|
|fly-liner_out|integer|null: false|
|roller|integer|null: false|
|double_play|integer|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player

## semi-final-round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :semi-final-round

## final-roundsテーブル
|Column|Type|Options|
|------|----|-------|
|opponent|string|null: false|
|manager|string|null: false|
|point_difference|integer|null: false|
|lost_point|integer|null: false|
|horisugi_doll|string|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player
- has_one :final-round_team
- has_one :manager
- has_one :point

## final-round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|2base_hit|integer|null: false|
|3base_hit|integer|null: false|
|home_run|integer|null: false|
|sacrifice_bunt|integer|null: false|
|sacrifice_fly|integer|null: false|
|steal|integer|null: false|
|pitch|integer|null: false|
|straight_ball_out|integer|null: false|
|change_ball_out|integer|null: false|
|strike_out|integer|null: false|
|fly-liner_out|integer|null: false|
|roller|integer|null: false|
|double_play|integer|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player

## final-round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :final-round

## total_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|2base_hit|integer|null: false|
|3base_hit|integer|null: false|
|home_run|integer|null: false|
|sacrifice_bunt|integer|null: false|
|sacrifice_fly|integer|null: false|
|steal|integer|null: false|
|pitch|integer|null: false|
|straight_ball_out|integer|null: false|
|change_ball_out|integer|null: false|
|strike_out|integer|null: false|
|fly-liner_out|integer|null: false|
|roller|integer|null: false|
|double_play|integer|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player

## managersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|muscle_coefficient|integer|null: false|
|agile_coefficient|integer|null: false|
|technique_coefficient|integer|null: false|
|change_coefficient|integer|null: false|
|spirit_coefficient|integer|null: false|
### Association
- belongs_to :1st-round
- belongs_to :2nd-round
- belongs_to :3rd-round
- belongs_to :4th-round
- belongs_to :semi-final-round
- belongs_to :final-round

## pointsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
### Association
- belongs_to :1st-round
- belongs_to :2nd-round
- belongs_to :3rd-round
- belongs_to :4th-round
- belongs_to :semi-final-round
- belongs_to :final-round