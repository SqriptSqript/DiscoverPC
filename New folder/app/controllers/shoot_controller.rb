class ShootController < ApplicationController
  def subs
    useda = params[:Computer][:used_at]
    usedf = params[:Computer][:used_for]
    casha = params[:Computer][:cash]
    @pc = Computer.where("used_for = ? AND cash < ? AND used_at = ?",usedf ,casha , useda)
    render :subs
  end

end
