class WelcomeController < ApplicationController
  before_action :initialize_produtos, only: [:index]

  def index
    @produtos = session[:produtos]
  end

  def adicionar_produto
    produto = { nome: params[:nome], preco: params[:preco].to_f }
    session[:produtos] << produto
    redirect_to root_path
  end

  private

  def initialize_produtos
    session[:produtos] ||= []
    @produtos = session[:produtos]    
  end
end
