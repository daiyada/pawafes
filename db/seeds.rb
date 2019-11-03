[
  ["三ツ沢環", 1.0, 1.0, 1.0, 1.0, 1.0],
  ["須神絵久", 1.3, 1.3, 1.0, 1.0, 1.0],
  ["木場静火", 1.3, 1.0, 1.3, 1.0, 1.0],
  ["明星雪華", 1.3, 1.0, 1.0, 1.3, 1.0],
  ["氷上聡里", 1.0, 1.3, 1.3, 1.0, 1.0],
  ["鴨川しぐれ", 1.0, 1.3, 1.0, 1.3, 1.0],
  ["神良美砂", 1.0, 1.3, 1.0, 1.3, 1.0],
  ["虹谷彩理", 1.0, 1.0, 1.3, 1.3, 1.0],
  ["倉家凪", 1.0, 1.0, 1.3, 1.0, 1.3],
  ["姫野カレン", 1.0, 1.0, 1.0, 1.3, 1.3],
  ["紺野美崎", 1.0, 1.0, 1.0, 1.0, 1.0],
  ["黒沢愛", 1.6, 1.0, 1.0, 1.0, 1.0],
  ["嵐山美鈴", 1.0, 1.6, 1.0, 1.0, 1.0],
  ["四条澄香", 1.0, 1.0, 1.6, 1.0, 1.0],
  ["七瀬はるか", 1.0, 1.0, 1.0, 1.6, 1.0],
  ["日和ミヨ", 1.0, 1.0, 1.0, 1.0, 1.6],
  ["我間摩夕", 1.0, 1.0, 1.0, 1.0, 1.0]
].each do |name, muscle, agile, technique, change, spirit|
  Manager.create!(
    { name: name, muscle_coefficient: muscle, agile_coefficient: agile, technique_coefficient: technique, change_coefficient: change, spirit_coefficient: spirit}
  )
end

[
  ["hit", 3, 3, 4, 0, 2],
  ["second_base_hit", 7, 8, 5, 0, 5],
  ["third_base_hit", 8, 10, 5, 0, 8],
  ["home_run", 10, 0, 5, 0, 9],
  ["sacrifice_bunt", 0, 4, 4, 0, 5],
  ["sacrifice_fly", 3, 5, 3, 0, 9],
  ["steal", 2, 8, 2, 0, 0],
  ["pitch", 3, 1, 1, 3, 3],
  ["straight_ball_out", 7, 2, 3, 0, 5],
  ["change_ball_out", 0, 1, 7, 16, 5],
  ["strike_out", 5, 1, 5, 5, 9],
  ["fly_liner_out", 4, 5, 4, 2, 6],
  ["roller", 2, 2, 6, 4, 8],
  ["double_play", 3, 10, 10, 5, 10]
].each do |name, muscle, agile, technique, change, spirit|
  Point.create!(
    { name: name, muscle: muscle, agile: agile, technique: technique, change: change, spirit: spirit}
  )
end

[
  ["極亜久商業高校", 33],
  ["大漁水産高校", 35],
  ["たんぽぽ製作所", 34],
  ["ドリル電器", 46],
  ["どすこい酒造", 65],
  ["恋恋高校", 32],
  ["バス停前高校", 28],
  ["河川敷ミラクルズ", 34],
  ["白薔薇かしまし学園大学", 32],
  ["ラグナロク分校", 38],
  ["激闘第一高校", 31],
  ["聖ジャスミン学園高校", 29],
  ["アマゾネス", 22],
  ["花ざかり高校", 30],
  ["パワフル高校", 28],
  ["北雪高校", 26],
  ["SG高校", 37],
  ["ダン＆ジョン高校", 33]
].each do |name, base_point|
  FirstRoundTeam.create!(
    { name: name, base_point: base_point}
  )
end

[
  ["仏契大学", 54],
  ["極亜久やんきーズ", 48],
  ["イレブン工科大学", 46],
  ["ミゾットスポーツ", 46],
  ["ときめき青春高校", 48],
  ["文武高校", 52],
  ["くろがね商業高校", 57],
  ["六面大学", 44],
  ["みわちゃん with DB", 48],
  ["古代大学", 46],
  ["大江戸カーニバルズ", 52],
  ["白轟高校", 41],
  ["大筒高校", 45],
  ["太平楽高校", 46],
  ["支良州水産高校", 45],
  ["MAJOR高校選抜", 68],
  ["青道高校", 68]
].each do |name, base_point|
  SecondRoundTeam.create!(
    { name: name, base_point: base_point}
  )
end

[
  ["あかつき大附属高校", 66],
  ["するめ大学", 72],
  ["ドラフ島連合チーム", 70],
  ["頑張パワフルズ", 67],
  ["灰凶高校", 62],
  ["神楽坂グループ", 68],
  ["四神黄龍高校", 79],
  ["覇堂高校", 66],
  ["ブレインマッスル高校", 68],
  ["ヴァンプ高校", 72],
  ["稲城実業高校", 73],
  ["プロ野球レジェンズ", 100]
].each do |name, base_point|
  ThirdRoundTeam.create!(
    { name: name, base_point: base_point}
  )
end

[
  ["帝王実業高校", 84],
  ["あかつき大附属高校OB", 85],
  ["シャイニングバスターズ", 77],
  ["オール海東学院", 78],
  ["神帝学園高校", 81],
  ["ワールド高校", 79],
  ["壱流大学", 86],
  ["ギガバイツ3.0", 88],
  ["瞬鋭高校", 83]
].each do |name, base_point|
  FourthRoundTeam.create!(
    { name: name, base_point: base_point}
  )
end

[
  ["アンドロメダ学園高校", 96],
  ["黒獅子重工", 99],
  ["レッドエンジェルス", 100],
  ["西強大学", 98],
  ["天空中央高校", 97]
].each do |name, base_point|
  SemiFinalRoundTeam.create!(
    { name: name, base_point: base_point}
  )
end

[
  ["HIBIKINOセイレーンズ", 120]
].each do |name, base_point|
  FinalRoundTeam.create!(
    { name: name, base_point: base_point}
  )
end