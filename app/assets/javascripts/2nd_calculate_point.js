$(document).on("turbolinks:load", function(){

  function buildtext(data){
    var html = `<div class="max-point">
                  <div class="max-muscle-text">
                    筋力ポイント最大値：
                  </div>
                  <div class="max-muscle-point", id = "max-muscle-point">
                  </div>

                  <div class="max-agile-text">
                    敏捷ポイント最大値：
                  </div>
                  <div class="max-agile-point", id = "max-agile-point">
                  </div>

                  <div class="max-technique-text">
                    技術ポイント最大値：
                  </div>
                  <div class="max-technique-point", id = "max-technique-point">
                  </div>

                  <div class="max-change-text">
                    変化球ポイント最大値：
                  </div>
                  <div class="max-change-point", id = "max-change-point">
                  </div>

                  <div class="max-spirit-text">
                    精神ポイント最大値：
                  </div>
                  <div class="max-spirit-point", id = "max-spirit-point">
                  </div>
                </div>`
    return html;
  }

  $("#2nd-game-data").on("change",function(e){
    e.preventDefault();
    var formData = new FormData(this);
    $.ajax({
      url: "catch_point",
      type: "POST",
      data: formData,
      datatype: "json",
      processData: false,
      contentType: false
    })
    .done(function(data){
      console.log(data);
      // ゲームレベル
      var level = data.level
      if (level == "達人"){
        var level_coeffi = 1.2
      } else if (level == "ノーマル"){
        var level_coeffi = 1.0
      } else {
        var level_coeffi = 0.5
      }
      maxActionValue = 160 * level_coeffi;  // 何回戦かにより変化
      // 筋力試合前データ
      var muscle_base = data.muscle.muscle_base_point;
      var muscle_action = data.muscle.muscle_action_point;
      // 敏捷試合前データ
      var agile_base = data.agile.agile_base_point;
      var agile_action = data.agile.agile_action_point;
      // 技術試合前データ
      var technique_base = data.technique.technique_base_point;
      var technique_action = data.technique.technique_action_point;
      // 変化試合前データ
      var change_base = data.change.change_base_point;
      var change_action = data.change.change_action_point;
      // 精神試合前データ
      var spirit_base = data.spirit.spirit_base_point;
      var spirit_action = data.spirit.spirit_action_point;
      // ヒット獲得ポイント
      var hit_muscle = data.points[0].muscle
      var hit_agile = data.points[0].agile
      var hit_technique = data.points[0].technique
      var hit_change = data.points[0].change
      var hit_spirit = data.points[0].spirit
      // ツーベースヒット
      var second_hit_muscle = data.points[1].muscle
      var second_hit_agile = data.points[1].agile
      var second_hit_technique = data.points[1].technique
      var second_hit_change = data.points[1].change
      var second_hit_spirit = data.points[1].spirit
      // スリーベースヒット
      var third_hit_muscle = data.points[2].muscle
      var third_hit_agile = data.points[2].agile
      var third_hit_technique = data.points[2].technique
      var third_hit_change = data.points[2].change
      var third_hit_spirit = data.points[2].spirit
      // ホームラン
      var home_run_muscle = data.points[3].muscle
      var home_run_agile = data.points[3].agile
      var home_run_technique = data.points[3].technique
      var home_run_change = data.points[3].change
      var home_run_spirit = data.points[3].spirit
      // 犠打
      var bunt_muscle = data.points[4].muscle
      var bunt_agile = data.points[4].agile
      var bunt_technique = data.points[4].technique
      var bunt_change = data.points[4].change
      var bunt_spirit = data.points[4].spirit
      // 犠飛
      var fly_muscle = data.points[5].muscle
      var fly_agile = data.points[5].agile
      var fly_technique = data.points[5].technique
      var fly_change = data.points[5].change
      var fly_spirit = data.points[5].spirit
      // 盗塁
      var steal_muscle = data.points[6].muscle
      var steal_agile = data.points[6].agile
      var steal_technique = data.points[6].technique
      var steal_change = data.points[6].change
      var steal_spirit = data.points[6].spirit
      // 登板
      var pitch_muscle = data.points[7].muscle
      var pitch_agile = data.points[7].agile
      var pitch_technique = data.points[7].technique
      var pitch_change = data.points[7].change
      var pitch_spirit = data.points[7].spirit
      // ストレート系アウト
      var straight_out_muscle = data.points[8].muscle
      var straight_out_agile = data.points[8].agile
      var straight_out_technique = data.points[8].technique
      var straight_out_change = data.points[8].change
      var straight_out_spirit = data.points[8].spirit
      // 変化球系アウト
      var change_out_muscle = data.points[9].muscle
      var change_out_agile = data.points[9].agile
      var change_out_technique = data.points[9].technique
      var change_out_change = data.points[9].change
      var change_out_spirit = data.points[9].spirit
      // 奪三振
      var strike_out_muscle = data.points[10].muscle
      var strike_out_agile = data.points[10].agile
      var strike_out_technique = data.points[10].technique
      var strike_out_change = data.points[10].change
      var strike_out_spirit = data.points[10].spirit
      // フライ・ライナーアウト
      var fly_liner_muscle = data.points[11].muscle
      var fly_liner_agile = data.points[11].agile
      var fly_liner_technique = data.points[11].technique
      var fly_liner_change = data.points[11].change
      var fly_liner_spirit = data.points[11].spirit
      // ゴロアウト
      var roller_muscle = data.points[12].muscle
      var roller_agile = data.points[12].agile
      var roller_technique = data.points[12].technique
      var roller_change = data.points[12].change
      var roller_spirit = data.points[12].spirit
      // 併殺
      var double_muscle = data.points[13].muscle
      var double_agile = data.points[13].agile
      var double_technique = data.points[13].technique
      var double_change = data.points[13].change
      var double_spirit = data.points[13].spirit
      // form入力された値
      var take_part_in = $("#participation").val();
      if ((take_part_in == "野手フル出場")||(take_part_in == "投手完投")){
        var part_coeffi = 1.5;
      } else if ((take_part_in == "野手部分出場")||(take_part_in == "投手6回以上")){
        var part_coeffi = 1.3;
      } else if (take_part_in == "投手3回以上"){
        var part_coeffi = 1.2;
      } else if (take_part_in == "投手3回未満"){
        var part_coeffi = 1.1;
      } else {
        var part_coeffi = 1.0;
      }
      var point_differ = $("#point_difference").val();
      if (point_differ == 0){
        differ_coeffi = 1.0;
      } else if (point_differ == 1){
        differ_coeffi = 1.1;
      } else if (point_differ == 2){
        differ_coeffi = 1.2;
      } else if (point_differ == 3){
        differ_coeffi = 1.3;
      } else if (point_differ == 4){
        differ_coeffi = 1.4;
      } else if (point_differ == 5){
        differ_coeffi = 1.5;
      } else if (point_differ == 6){
        differ_coeffi = 1.6;
      } else if (point_differ == 7){
        differ_coeffi = 1.7;
      } else if (point_differ == 8){
        differ_coeffi = 1.8;
      } else if (point_differ == 9){
        differ_coeffi = 1.9;
      } else if (point_differ >= 10){
        differ_coeffi = 2.0;
      } else if (point_differ == -1){
        differ_coeffi = 0.9;
      } else if (point_differ == -2){
        differ_coeffi = 0.8;
      } else if (point_differ == -3){
        differ_coeffi = 0.7;
      } else if (point_differ == -4){
        differ_coeffi = 0.6;
      } else if (point_differ <= -5){
        differ_coeffi = 0.5;
      };
      var lost_point = $("#lost_point").val();
      if (lost_point == 0){
        lost_coeffi = 1.0;
      } else if (lost_point == 1){
        lost_coeffi = 0.94;
      } else if (lost_point == 2){
        lost_coeffi = 0.88;
      } else if (lost_point == 3){
        lost_coeffi = 0.82;
      } else if (lost_point >= 4){
        lost_coeffi = 0.76;
      };
      var hit = $("#hit").val();
      var second_hit = $("#second_base_hit").val();
      var third_hit = $("#third_base_hit").val();
      var home_run = $("#home_run").val();
      var bunt = $("#sacrifice_bunt").val();
      var fly = $("#sacrifice_fly").val();
      var steal = $("#steal").val();
      var pitch = $("#pitch").val();
      var straight_out = $("#straight_ball_out").val();
      var change_out = $("#change_ball_out").val();
      var strike_out = $("#strike_out").val();
      var fly_liner_out = $("#fly_liner_out").val();
      var roller = $("#roller").val();
      var double = $("#double_play").val();
      var wagama = $("#wagama_order").val();
      if (wagama == "成功"){
        wagama_coeffi = 1.6;
      } else {
        wagama_coeffi = 1.0;
      }
      // 獲得ポイント
      // 筋力
      // ベース値×ベース係数
      var BaseMuscle = muscle_base * part_coeffi;
      // 行動値
      var ActionMuscle = hit * hit_muscle + second_hit * second_hit_muscle + third_hit * third_hit_muscle + home_run * home_run_muscle + bunt * bunt_muscle + fly * fly_muscle + steal * steal_muscle + pitch * pitch_muscle + straight_out * straight_out_muscle + change_out * change_out_muscle + strike_out * strike_out_muscle + fly_liner_out * fly_liner_muscle + roller * roller_muscle + double * double_muscle
      // 行動係数
      var MuscleCoeffi = muscle_action * differ_coeffi * lost_coeffi * wagama_coeffi
      // 行動値×行動係数
      var imaginalMuscle = ActionMuscle * MuscleCoeffi
      if (imaginalMuscle <= maxActionValue){
        MuscleActionValue = imaginalMuscle
      } else if (imaginalMuscle > maxActionValue){
        MuscleActionValue = maxActionValue
      }
      // total((ベース値×ベース係数) + (行動値×行動係数))
      var MusPoint = Math.floor(BaseMuscle + MuscleActionValue);
      // MAX値
      var MaxMusPoint = Math.floor(BaseMuscle + maxActionValue);

      // 敏捷
      // ベース値×ベース係数
      var BaseAgile = agile_base * part_coeffi;
      // 行動値
      var ActionAgile = hit * hit_agile + second_hit * second_hit_agile + third_hit * third_hit_agile + home_run * home_run_agile + bunt * bunt_agile + fly * fly_agile + steal * steal_agile + pitch * pitch_agile + straight_out * straight_out_agile + change_out * change_out_agile + strike_out * strike_out_agile + fly_liner_out * fly_liner_agile + roller * roller_agile + double * double_agile
      // 行動係数
      var AgileCoeffi = agile_action * differ_coeffi * lost_coeffi * wagama_coeffi
      // 行動値×行動係数
      var imaginalAgile = ActionAgile * AgileCoeffi
      if (imaginalAgile <= maxActionValue){
        AgileActionValue = imaginalAgile
      } else if (imaginalAgile > maxActionValue){
        AgileActionValue = maxActionValue
      }
      // total((ベース値×ベース係数) + (行動値×行動係数))
      var AgiPoint = Math.floor(BaseAgile + AgileActionValue);
      // MAX値
      var MaxAgiPoint = Math.floor(BaseAgile + maxActionValue);

      // 技術
      // ベース値×ベース係数
      var BaseTechnique = technique_base * part_coeffi;
      // 行動値
      var ActionTechnique = hit * hit_technique + second_hit * second_hit_technique + third_hit * third_hit_technique + home_run * home_run_technique + bunt * bunt_technique + fly * fly_technique + steal * steal_technique + pitch * pitch_technique + straight_out * straight_out_technique + change_out * change_out_technique + strike_out * strike_out_technique + fly_liner_out * fly_liner_technique + roller * roller_technique + double * double_technique;
      // 行動係数
      var TechniqueCoeffi = technique_action * differ_coeffi * lost_coeffi * wagama_coeffi
      // 行動値×行動係数
      var imaginalTechnique = ActionTechnique * TechniqueCoeffi
      if (imaginalTechnique <= maxActionValue){
        TechniqueActionValue = imaginalTechnique
      } else if (imaginalTechnique > maxActionValue){
        TechniqueActionValue = maxActionValue
      }
      // total((ベース値×ベース係数) + (行動値×行動係数))
      var TecPoint = Math.floor(BaseTechnique + TechniqueActionValue);
      // MAX値
      var MaxTecPoint = Math.floor(BaseTechnique + maxActionValue);

      // 変化
      // ベース値×ベース係数
      var BaseChange = change_base * part_coeffi;
      // 行動値
      var ActionChange = hit * hit_change + second_hit * second_hit_change + third_hit * third_hit_change + home_run * home_run_change + bunt * bunt_change + fly * fly_change + steal * steal_change + pitch * pitch_change + straight_out * straight_out_change + change_out * change_out_change + strike_out * strike_out_change + fly_liner_out * fly_liner_change + roller * roller_change + double * double_change;
      // 行動係数
      var ChangeCoeffi = change_action * differ_coeffi * lost_coeffi * wagama_coeffi
      // 行動値×行動係数
      var imaginalChange = ActionChange * ChangeCoeffi
      if (imaginalChange <= maxActionValue){
        ChangeActionValue = imaginalChange
      } else if (imaginalChange > maxActionValue){
        ChangeActionValue = maxActionValue
      }
      // total((ベース値×ベース係数) + (行動値×行動係数))
      var ChaPoint = Math.floor(BaseChange + ChangeActionValue);
      // MAX値
      var MaxChaPoint = Math.floor(BaseChange + maxActionValue);

      // 精神
      // ベース値×ベース係数
      var BaseSpirit = spirit_base * part_coeffi;
      // 行動値
      var ActionSpirit = hit * hit_spirit + second_hit * second_hit_spirit + third_hit * third_hit_spirit + home_run * home_run_spirit + bunt * bunt_spirit + fly * fly_spirit + steal * steal_spirit + pitch * pitch_spirit + straight_out * straight_out_spirit + change_out * change_out_spirit + strike_out * strike_out_spirit + fly_liner_out * fly_liner_spirit + roller * roller_spirit + double * double_spirit;
      // 行動係数
      var SpiritCoeffi = spirit_action * differ_coeffi * lost_coeffi * wagama_coeffi
      // 行動値×行動係数
      var imaginalSpirit = ActionSpirit * SpiritCoeffi
      if (imaginalSpirit <= maxActionValue){
        SpiritActionValue = imaginalChange
      } else if (imaginalSpirit > maxActionValue){
        SpiritActionValue = maxActionValue
      }
      // total((ベース値×ベース係数) + (行動値×行動係数))
      var SpiPoint = Math.floor(BaseSpirit + SpiritActionValue);
      // MAX値
      var MaxSpiPoint = Math.floor(BaseSpirit + maxActionValue);

      if (MusPoint == MaxMusPoint){
        $('#muscle-point').css("color", "red")
      }
      if (AgiPoint == MaxAgiPoint){
        $('#agile-point').css("color", "red")
      }
      if (TecPoint == MaxTecPoint){
        $('#technique-point').css("color", "red")
      }
      if (ChaPoint == MaxChaPoint){
        $('#change-point').css("color", "red")
      }
      if (SpiPoint == MaxSpiPoint){
        $('#spirit-point').css("color", "red")
      }

      $('#muscle-point').val("");
      $('#agile-point').val("");
      $('#technique-point').val("");
      $('#change-point').val("");
      $('#spirit-point').val("");

      $('#muscle-point').val(MusPoint);
      $('#agile-point').val(AgiPoint);
      $('#technique-point').val(TecPoint);
      $('#change-point').val(ChaPoint);
      $('#spirit-point').val(SpiPoint);

      $(".game-max").empty();
      var html = buildtext(data);
      $(".game-max").append(html);

      var muscleElement = document.getElementById('max-muscle-point');
      muscleElement.innerHTML = MaxMusPoint;
      var agileElement = document.getElementById('max-agile-point');
      agileElement.innerHTML = MaxAgiPoint;
      var techniqueElement = document.getElementById('max-technique-point');
      techniqueElement.innerHTML = MaxTecPoint;
      var changeElement = document.getElementById('max-change-point');
      changeElement.innerHTML = MaxChaPoint;
      var spiritElement = document.getElementById('max-spirit-point');
      spiritElement.innerHTML = MaxSpiPoint;
    })
    .fail(function(){
      alert("エラー");
    })
  })
})