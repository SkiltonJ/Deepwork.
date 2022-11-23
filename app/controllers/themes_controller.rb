class ThemesController < ApplicationController
  def show
  end

  def new
    @theme = Theme.new
  end
end
