require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'fliperama',
  username: 'postgres',
  password: 'postgres',
  host: 'localhost'
)

ActiveRecord::Schema.define do
  create_table :users do |t|
    t.string :name
    t.string :email
  end
end

class User < ActiveRecord::Base
end

user = User.create(name: 'John Doe', email: 'jondoe@tiano.com')
user.save

User.all.each do |user|
  puts user.name
  puts user.email
end
