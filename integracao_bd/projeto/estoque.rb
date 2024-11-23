require 'active_record'
require 'logger'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: 'postgres',
  database: 'estoque'
)

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Schema.define do
  create_table :categorias do |t|
    t.string :nome
  end

  create_table :produtos do |t|
    t.string :nome
    t.references :categoria, foreign_key: { to_table: :categorias }
    t.integer :quantidade, default: 0
  end
end

class Categoria < ActiveRecord::Base
  self.table_name = 'categorias'
  has_many :produtos
end

class Produto < ActiveRecord::Base
  self.table_name = 'produtos'
  belongs_to :categoria

  def diminui_quantidade(valor)
    if self.quantidade >= valor
      self.quantidade -= valor
      self.save
    else
      puts "Quantidade insuficiente"
    end
  end

  def aumenta_quantidade(valor)
    self.quantidade += valor
    self.save
  end
end

categoria1 = Categoria.create(nome: 'informatica')
categoria2 = Categoria.create(nome: 'Eletronicos')
categoria3 = Categoria.create(nome: 'Materiais de Construcao')

produto1 = Produto.create(nome: 'mouse', quantidade: 10, categoria: categoria1)
produto1.diminui_quantidade(5)
produto1.aumenta_quantidade(10)

produto2 = Produto.create(nome: 'Celular', quantidade: 10, categoria: categoria2)
produto2.diminui_quantidade(5)
produto2.aumenta_quantidade(10)

produto3 = Produto.create(nome: 'Cimento', quantidade: 10, categoria: categoria3)
produto3.diminui_quantidade(5)
produto3.aumenta_quantidade(10)

all_products = Produto.all
all_products.each do |product|
  puts product.nome
end
