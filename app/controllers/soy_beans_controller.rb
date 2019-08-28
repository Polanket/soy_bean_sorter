class SoyBeansController < ApplicationController
  def index
    @soy_beans = SoyBean.all
    @soy_beans_count = @soy_beans.count

    if search_params.present?
      @soy_beans = SoyBean.where(search_params)
      @soy_beans_count = @soy_beans.count
    end
  end

  private

  def search_params
    params
      .require(:search).permit(:classification, :date, :precip, :temp, :area_damaged, :severity)
      .to_h
      .reject { |_, value| value.empty? } if params.key? :search
  end
end

