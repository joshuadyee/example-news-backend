class ArticlesController < ApplicationController
  def index
    api_key = Rails.application.credentials.news_api_key
    response = HTTP.get("https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=#{api_key}")
    render json: response.parse(:json)
  end
end