class EstudantesController < ApplicationController
  def index
    @estudantes = [
      { nome: "Fulano", idade: 18, curso: "Ciência da Computação" },
      { nome: "Ciclano", idade: 20, curso: "Engenharia de Software" },
      { nome: "Beltrano", idade: 22, curso: "Sistemas de Informação" }
    ]
  end
end