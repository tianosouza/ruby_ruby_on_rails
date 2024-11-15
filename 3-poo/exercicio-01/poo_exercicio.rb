=begin
  Defina uma class Projetos com as informações a seguir:

  - A instância deve definir 3 variáveis de instância:
   1 - name = 'Automação Web'
   2 - budget = 10000
   3 - members = [ 'Fulano', 'Sicrano' ]

   Defina 3 métodos getter (name, budget, members) para retornar
   o valor das respectivas variáveis de instância

   Defina um método setter (budget=) para atualizar o valor 
   da variável de instância @budget

   A class também deve ter o método to_s para retornar o valor das variáveis
   de instância
=end

class Project
  def initialize
    @name = 'Automação Web'
    @budget = 10000
    @members = [ 'Fulano', 'Sicrano' ]
  end

  def name
    @name
  end

  def budget
    @budget
  end

  def members
    @members
  end

  def to_s
    "#{@name} - #{@budget} - #{@members}"
  end

  def name=(new_name)
    @name = new_name
  end

  def budget=(new_budget)
    @budget = new_budget
  end
end

pojeto = Project.new

puts pojeto.name
puts pojeto.budget
puts pojeto.members
puts pojeto.to_s
pojeto.name = 'Automação de Testes'
pojeto.budget = 5000
pojeto.members = [ 'Fulano', 'Sicrano', 'Beltr' ]
puts pojeto.name
puts pojeto.budget
puts pojeto.members