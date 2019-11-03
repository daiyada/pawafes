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
- has_one :first_round, dependent: :destroy
- has_one :first_round_record, dependent: :destroy
- has_one :second_round, dependent: :destroy
- has_one :second_round_record, dependent: :destroy
- has_one :third_round, dependent: :destroy
- has_one :third_round_record, dependent: :destroy
- has_one :fourth_round, dependent: :destroy
- has_one :fourth_round_record, dependent: :destroy
- has_one :semi_final_round, dependent: :destroy
- has_one :semi_final_round_record, dependent: :destroy
- has_one :final_round, dependent: :destroy
- has_one :final_round_record, dependent: :destroy
- has_one :total_record, dependent: :destroy

## first_roundsテーブル
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
- has_one :first_round_team
- has_one :manager
- has_one :point

## first_round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|second_base_hit|integer|null: false|
|third_base_hit|integer|null: false|
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

## first_round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :first_round

## second_roundsテーブル
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
- has_one :second_round_team
- has_one :manager
- has_one :point

## second_round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|second_base_hit|integer|null: false|
|third_base_hit|integer|null: false|
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
- belongs_to :second_round

## second_round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :player

## third_roundsテーブル
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
- has_one :third_round_team
- has_one :manager
- has_one :point

## third_round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|second_base_hit|integer|null: false|
|third_base_hit|integer|null: false|
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

## third_round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :third_round

## fourth_roundsテーブル
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
- has_one :fourth_round_team
- has_one :manager
- has_one :point

## fourth_round_recordsテーブル
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

## fourth_round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :fourth_round

## semi_final_roundsテーブル
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
- has_one :semi_final_round_team
- has_one :manager
- has_one :point

## semi_final_round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|second_base_hit|integer|null: false|
|third_base_hit|integer|null: false|
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

## semi_final_round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :semi_final_round

## final_roundsテーブル
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
- has_one :final_round_team
- has_one :manager
- has_one :point

## final_round_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|second_base_hit|integer|null: false|
|third_base_hit|integer|null: false|
|home_run|integer|null: false|
|sacrifice_bunt|integer|null: false|
|sacrifice_fly|integer|null: false|
|steal|integer|null: false|
|pitch|integer|null: false|
|straight_ball_out|integer|null: false|
|change_ball_out|integer|null: false|
|strike_out|integer|null: false|
|fly_liner_out|integer|null: false|
|roller|integer|null: false|
|double_play|integer|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player

## final_round_teamsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|base_point|integer|null: false|
### Association
- belongs_to :final_round

## total_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
|hit|integer|null: false|
|second_base_hit|integer|null: false|
|third_base_hit|integer|null: false|
|home_run|integer|null: false|
|sacrifice_bunt|integer|null: false|
|sacrifice_fly|integer|null: false|
|steal|integer|null: false|
|pitch|integer|null: false|
|straight_ball_out|integer|null: false|
|change_ball_out|integer|null: false|
|strike_out|integer|null: false|
|fly_liner_out|integer|null: false|
|roller|integer|null: false|
|double_play|integer|null: false|
|player|references|null: false, foreign_key: true|
### Association
- belongs_to :player

## managersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|muscle_coefficient|float|null: false|
|agile_coefficient|float|null: false|
|technique_coefficient|float|null: false|
|change_coefficient|float|null: false|
|spirit_coefficient|float|null: false|
### Association
- belongs_to :first_round
- belongs_to :second_round
- belongs_to :third_round
- belongs_to :fourth_round
- belongs_to :semi_final_round
- belongs_to :final_round

## pointsテーブル
|Column|Type|Options|
|------|----|-------|
|name|sting|null: false|
|muscle|integer|null: false|
|agile|integer|null: false|
|technique|integer|null: false|
|change|integer|null: false|
|spirit|integer|null: false|
### Association
- belongs_to :first-round
- belongs_to :second-round
- belongs_to :third-round
- belongs_to :fourth-round
- belongs_to :semi_final_round
- belongs_to :final_round