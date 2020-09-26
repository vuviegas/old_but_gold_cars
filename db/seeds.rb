# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

12.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.full_address, email: Faker::Internet.email, password: '123456')
  Car.create!(brand: Faker::Vehicle.manufacture, model: Faker::Vehicle.model, color: Faker::Vehicle.color, year: Faker::Vehicle.year, description: ['Desde fábrica este interior é todo original de fábrica. Com a tapeçaria em perfeito estado, tapeçaria limpa e original, além de estar muito bem conservada.', 'Todos os mostradores estão em perfeito estado, funcionam bem e os reloginhos marcam corretamente. Sem rachaduras no painel.', 'Motor 4 cilindros original e todo revisado, em perfeito estado e funcionando corretamente. Todos os sistemas funcionam, com correias e mangueiras novas.', 'Esta carroceria está toda perfeita. Tem até entrada de ar no assoalho, original de fábrica. Com isso, não há podres, nem ferrugens ou qualquer avarias. Além disso, suas linhas e curvas estão completamente alinhadas.', 'Igualmente ao restante do veículo, este interior é impecável e original. os bancos foram refeitos recentemente, no entanto, o tecido é original de fábrica. Ficou aguardando por 50 anos até receber este lindo Fusca para ser aplicado no banco.', 'Este é um daqueles nacionais que podemos ter orgulho pela sutileza e refinamento de fabricação.', 'O modelo tem um design elegante; com linhas harmoniosas.', 'O veículo nasceu para ser robusto e refinado ao mesmo tempo.', 'Este belo exemplar tem em seu design muito das linhas europeias do Opel, e construção em medidas norte-americanas.', 'O carro está completamente alinhado e íntegro.', 'Em perfeito estado a cor deste Chevrolet Opala, sem riscos ou queimaduras. O veículo tem sua pintura íntegra e com ótima aparência.' ].sample, price: rand(10000..30000), user: user)
end

