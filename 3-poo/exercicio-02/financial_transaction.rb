=begin
  Defina uma classe FinancialTransaction com as características abaixo:

  A instância deve definir 4 variáveis de instância:
    1 - @to
    2 - @from
    3 - @amount
    4 - @completed

  Defina métodos getter para o @to, @from e @amount
  Defina métodos getter + setter para o @completed

  obs use o attr.
=end

class FinancialTransaction
  attr_reader :to, :from, :amount
  attr_accessor :completed

  def initialize(to, from, amount, completed)
    @to = to
    @from = from
    @amount = amount
    @completed = completed
  end
end

financial_transaction = FinancialTransaction.new("João", "Maria", 1000, false)
puts financial_transaction.to
puts financial_transaction.from
puts financial_transaction.amount
puts financial_transaction.completed
financial_transaction.completed = true
puts financial_transaction.completed