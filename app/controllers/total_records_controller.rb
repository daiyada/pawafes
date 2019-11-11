class TotalRecordsController < ApplicationController
  before_action :calc_point, only: [:new, :create]

  def new
    @player = Player.find(params[:player_id])
    @name = @player.name
    @throw = @player.dominant_throw
    @batting = @player.dominant_batting
    @position = @player.position
    @firopp = FirstRound.find(params[:player_id]).opponent
    @secopp = SecondRound.find(params[:player_id]).opponent
    @thiropp = ThirdRound.find(params[:player_id]).opponent
    @fouropp = FourthRound.find(params[:player_id]).opponent
    @semiopp = SemiFinalRound.find(params[:player_id]).opponent
    @finopp = FinalRound.find(params[:player_id]).opponent
    @firmanager = FirstRound.find(params[:player_id]).supporter
    @secmanager = SecondRound.find(params[:player_id]).supporter
    @thirmanager = ThirdRound.find(params[:player_id]).supporter
    @fourmanager = FourthRound.find(params[:player_id]).supporter
    @semimanager = SemiFinalRound.find(params[:player_id]).supporter
    @finmanager = FinalRound.find(params[:player_id]).supporter
  end

  def create
    TotalRecord.create(
      muscle: @total_mus,
      agile: @total_agi,
      technique: @total_tec,
      change: @total_cha,
      spirit: @total_spi,
      player_id: params[:player_id]
    )
    redirect_to root_path
  end

  def calc_point
    fir_mus = FirstRoundRecord.find(params[:player_id]).muscle
    sec_mus = SecondRoundRecord.find(params[:player_id]).muscle
    thi_mus = ThirdRoundRecord.find(params[:player_id]).muscle
    fou_mus = FourthRoundRecord.find(params[:player_id]).muscle
    sem_mus = SemiFinalRoundRecord.find(params[:player_id]).muscle
    fin_mus = FinalRoundRecord.find(params[:player_id]).muscle

    fir_agi = FirstRoundRecord.find(params[:player_id]).agile
    sec_agi = SecondRoundRecord.find(params[:player_id]).agile
    thi_agi = ThirdRoundRecord.find(params[:player_id]).agile
    fou_agi = FourthRoundRecord.find(params[:player_id]).agile
    sem_agi = SemiFinalRoundRecord.find(params[:player_id]).agile
    fin_agi = FinalRoundRecord.find(params[:player_id]).agile

    fir_tec = FirstRoundRecord.find(params[:player_id]).technique
    sec_tec = SecondRoundRecord.find(params[:player_id]).technique
    thi_tec = ThirdRoundRecord.find(params[:player_id]).technique
    fou_tec = FourthRoundRecord.find(params[:player_id]).technique
    sem_tec = SemiFinalRoundRecord.find(params[:player_id]).technique
    fin_tec = FinalRoundRecord.find(params[:player_id]).technique

    fir_cha = FirstRoundRecord.find(params[:player_id]).change
    sec_cha = SecondRoundRecord.find(params[:player_id]).change
    thi_cha = ThirdRoundRecord.find(params[:player_id]).change
    fou_cha = FourthRoundRecord.find(params[:player_id]).change
    sem_cha = SemiFinalRoundRecord.find(params[:player_id]).change
    fin_cha = FinalRoundRecord.find(params[:player_id]).change

    fir_spi = FirstRoundRecord.find(params[:player_id]).spirit
    sec_spi = SecondRoundRecord.find(params[:player_id]).spirit
    thi_spi = ThirdRoundRecord.find(params[:player_id]).spirit
    fou_spi = FourthRoundRecord.find(params[:player_id]).spirit
    sem_spi = SemiFinalRoundRecord.find(params[:player_id]).spirit
    fin_spi = FinalRoundRecord.find(params[:player_id]).spirit

    @total_mus = fir_mus + sec_mus + thi_mus + fou_mus + sem_mus + fin_mus
    @total_agi = fir_agi + sec_agi + thi_agi + fou_agi + sem_agi + fin_agi
    @total_tec = fir_tec + sec_tec + thi_tec + fou_tec + sem_tec + fin_tec
    @total_cha = fir_cha + sec_cha + thi_cha + fou_cha + sem_cha + fin_cha
    @total_spi = fir_spi + sec_spi + thi_spi + fou_spi + sem_spi + fin_spi
    
    @fir_value = fir_mus, fir_agi, fir_tec, fir_cha, fir_spi
    @sec_value = sec_mus, sec_agi, sec_tec, sec_cha, sec_spi
    @thi_value = thi_mus, thi_agi, thi_tec, thi_cha, thi_spi
    @fou_value = fou_mus, fou_agi, fou_tec, fou_cha, fou_spi
    @sem_value = sem_mus, sem_agi, sem_tec, sem_cha, sem_spi
    @fin_value = fin_mus, fin_agi, fin_tec, fin_cha, fin_spi
    @total_value = @total_mus, @total_agi, @total_tec, @total_cha, @total_spi
  end
end
