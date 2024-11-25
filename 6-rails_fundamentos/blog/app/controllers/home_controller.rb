class HomeController < ApplicationController
  def index
    # @nome = "Fulano"
    # render html: "<h1>Olá, #{@nome}</h1>".html_safe
    @author = "Fulano"
    @posts = [
      { title: "Post 1", content: "Conteúdo do post 1" },
      { title: "Post 2", content: "Conteúdo do post 2" },
      { title: "Post 3", content: "Conteúdo do post 3" },        
    ]
  end
end