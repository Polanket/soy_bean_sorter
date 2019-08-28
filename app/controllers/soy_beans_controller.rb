class SoyBeansController < ApplicationController
  def index
    @soy_beans = SoyBean.all

    if search_params.present?
      @soy_beans = SoyBean.where(search_params)
    end
  end

  private

  def search_params
    params.require(:search).permit(:classification, :date, :precip, :temp, :area_damaged, :severity).to_h.reject {|_, value| value.empty?} if params.has_key? :search
  end
end

