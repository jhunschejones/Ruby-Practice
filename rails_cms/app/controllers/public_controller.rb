class PublicController < ApplicationController

  layout 'public'
  before_action :setup_navigation

  def index
  end

  def show
    @page = Page.visible.where(permalink: params[:permalink]).first

    redirect_to(action: 'index') if @page.nil?
  end

  private

  def setup_navigation
    @subjects = Subject.visible.sorted
  end
end
