class TopController < ApplicationController
  def home
    agent = Mechanize.new    #agentという変数にMechanizeクラスのインスタンスを代入
    page = agent.get("https://ja.wikipedia.org/wiki/%E5%B2%A1%E5%B4%8E%E5%B8%82%E7%AB%8B%E4%B8%AD%E5%A4%AE%E5%9B%B3%E6%9B%B8%E9%A4%A8%E4%BA%8B%E4%BB%B6")
    @elements = page.search('p')
  end
end
