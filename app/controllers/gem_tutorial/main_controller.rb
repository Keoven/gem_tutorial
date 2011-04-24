class GemTutorial::MainController < ApplicationController
  unloadable

  def index
    render :text => 'Gem Tutorial'
  end
end
