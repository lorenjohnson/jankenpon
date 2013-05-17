class RoundsController < ApplicationController

  def index
    @new_round = Round.new
    @rounds = Round.where(session_id: session[:session_id]).order("created_at DESC").all
    @won_count = @rounds.count(&:won?)
    @lost_count = @rounds.count(&:lost?)
    @round = @rounds.shift unless @rounds.empty?
  end

  def create
    @round = Round.new(params[:round])
    if !@round.save
      flash[:notice] = "Something terrible has happened..."
    end
    redirect_to rounds_path
  end

  def destroy
    Round.where(session_id: session[:session_id]).destroy_all
    reset_session
    redirect_to rounds_path
  end

end
