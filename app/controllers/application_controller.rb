class ApplicationController < ActionController::Base
  before_action :set_locale, :set_category

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def set_category
    @categories = Category.all
  end

  include SessionsHelper
end
