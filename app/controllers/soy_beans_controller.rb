class SoyBeansController < ApplicationController
  def index
    @soy_beans = SoyBean.all
  end

  def show

  end
end
