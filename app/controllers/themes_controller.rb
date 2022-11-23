class ThemesController < ApplicationController
  def show
  end

  def new
    @theme = Theme.new
  end

  def create
    @user = current_user
    @theme = Theme.new(theme_params)
    @theme.user = @user
    if @theme.save
      redirect_to theme_path(@theme)
    else
      render "themes/new", status: :unprocessable_entity
    end
  end

  private

  def theme_params
    params.require(:theme).permit(:study_duration, :block_amount, :break_duration, :background, :music, :name)
  end
end
