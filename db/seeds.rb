# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# 12.times do
#   user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.full_address, email: Faker::Internet.email, password: '123456')
#   Car.create!(brand: Faker::Vehicle.manufacture, model: Faker::Vehicle.model, color: Faker::Vehicle.color, year: Faker::Vehicle.year, description:
# ['Desde fábrica este interior é todo original de fábrica. Com a tapeçaria em perfeito estado, tapeçaria limpa e original, além de estar muito bem conservada.',
#   'Todos os mostradores estão em perfeito estado, funcionam bem e os reloginhos marcam corretamente. Sem rachaduras no painel.', 'Motor 4 cilindros original e todo
#   revisado, em perfeito estado e funcionando corretamente. Todos os sistemas funcionam, com correias e mangueiras novas.', 'Esta carroceria está toda perfeita.
#   Tem até entrada de ar no assoalho, original de fábrica. Com isso, não há podres, nem ferrugens ou qualquer avarias. Além disso, suas linhas e curvas estão
#   completamente alinhadas.', 'Igualmente ao restante do veículo, este interior é impecável e original. os bancos foram refeitos recentemente, no entanto, o t
#     ecido é original de fábrica. Ficou aguardando por 50 anos até receber este lindo Fusca para ser aplicado no banco.', 'Este é um daqueles nacionais que
#     podemos ter orgulho pela sutileza e refinamento de fabricação.', 'O modelo tem um design elegante; com linhas harmoniosas.', 'O veículo nasceu para ser
#     robusto e refinado ao mesmo tempo.', 'Este belo exemplar tem em seu design muito das linhas europeias do Opel, e construção em medidas norte-americanas.',
#       'O carro está completamente alinhado e íntegro.', 'Em perfeito estado a cor deste Chevrolet Opala, sem riscos ou queimaduras. O veículo tem sua pintura
#       íntegra e com ótima aparência.' ].sample, price: rand(10000..30000), user: user)
# end



user1 = User.create!(first_name: "Maria", last_name: "Silva", address: "Rua Riachuelo, 10, Porto Alegre, RS", email: "maria@silva.com.br", password: '123456')
user2 = User.create!(first_name: "João", last_name: "Santos", address: "Rua Portugal, 20, Aracaju, SE", email: "joão@santos.com.br", password: '123456')
Car.create!(brand: "Volkswagem",
  model: "Kombi",
  color: "Vermelho",
  year: 1968,
  description: "Ela é conhecida como Kombi Corujinha, mas na verdade é a Westfalia-Werke. Esta Kombi está em muito bom estado de conservação, com  assoalhos, pintura e motor novo. Motor 1500 com câmbio manual 4 marchas do SP2 trocando perfeitamente.",
  price: 20000,
  user: user1,
  address: "Rua Riachuelo, 10, Porto Alegre, RS")
  # photos: ["https://infograficos.estadao.com.br/jornal-do-carro/kombi/img/gallery/2/foto-36.jpg?v=2", "https://lh3.googleusercontent.com/proxy/TUmsBzZzAE-dpX6fujuGay7NLSKzVQWug2SydVlyjAbRP-LfgqP0zc01830y9qt_hPhS9cF8ymzymDycBeAXd_LZC15Hbzkxvdt62g00Sj4vNvl8CcCCeouDd1mziqDa7Q", "https://lh3.googleusercontent.com/proxy/vHH5k3bB94lcHwplOuaRG-R8KHcnYLzezfu9O2m8J5G9N29ZqimI9Zxgl0c5z3sHzifLjzLXmtF3GXsWBClrnbKxmj35xPGSi3ynvz0PxYPlaHrvfoc9vD1QmLTcu1prMHsbkG5Q"])
Car.create!(brand: 'Jaguar',
 model: 'XJ-S Coupé V12' ,
  color: 'Branco',
   year: 1977,
   description: "Possui um lindo design, esse exemplar vem se tornando cada dia mais desejado e colecionável no mundo inteiro. Esse carro está bem integro, com interior em muito bom estado, possui motor V12 com câmbio automático." ,
   price: 37000,
   user: user1,
   address: "Avenida Protásio Alves, 1568, Porto Alegre, RS")

Car.create!(brand: 'Ford',
 model: 'Pick-up' ,
  color: 'Verde',
   year: 1929,
   description: "Carroceria em excelente estado. Nesta unidade não há ferrugens, está alinhada e a pintura com verdadeiro tratamento.",
   price: 50000,
   user: user1,
   address: "Avenida Paulista, 1000, São Paulo, SP")

Car.create!(brand: 'Pontiac',
 model: 'GTO' ,
  color: 'Azul',
   year: 1966,
   description: "Esse lindo 1966 Pontiac GTO passou por um processo completo de restauração, linda combinação de azul com interior gelo, possui motor V8 Big Block 6.2L e câmbio automático, ar condicionado original, direção hidráulica, rodas Cragar de época e muito mais.",
   price: 380000,
   user: user1,
   address: "Rua Dona Veridiana, 499, São Paulo, SP")

Car.create!(brand: 'Cadillac',
 model: 'De Ville',
  color: 'Azul',
   year: 1959,
   description: "Esse lindo 1959 Cadillac De Ville 4 Portas Sem Coluna, mais conhecido aqui no Brasil como ” Rabo de peixe” devido a sua  traseira com design arrojado de época.",
   price: 160000,
   user: user1,
   address: "Rua Voluntários da Pátria, 3167, São Paulo, SP")

Car.create!(brand: 'Chevrolet',
 model: 'Corvette Targa',
  color: 'Vermelho',
   year: 1968,
   description: "Motor V8 com cambio manual de 4 velocidades, interior em tecido na cor vermelha, carroceria em fibra, possui vidros elétricos, 02 jogos de capota Targa.",
   price: 185000,
   user: user1,
   address: "Rua Voluntários da Pátria, 3167, São Paulo, SP")

Car.create!(brand: 'Volkswagem',
 model: 'Zé do Caixão',
  color: 'Branco',
   year: 1969,
   description: "Rodas originais com calotas cromadas, interior na cor preta, painel jacarandá, elétrica revisada, carro com poucas unidades produzidas. Documentação 1em dia.",
   price: 185000,
   user: user1,
   address: "Rua Conselheiro Mafra, 656 , Florianópolis, SC")

Car.create!(brand: 'Porsche',
 model: 'Speedster',
  color: 'Cinza',
   year: 1958,
   description: "Rodas cromadas 15”, interior na cor vermelha, possui todos os frisos e logotipos , retrovisores e detalhes do original.",
   price: 62000,
   user: user1,
   address: "Rua Dr. Amadeu da Luz, 165, Blumenau, SC")



Car.create!(brand: 'Chevrolet',
 model: 'Master Deluxe',
  color: 'Bege',
   year: 1936,
   description: "Todo original, com todas as peças originais. Recebeu um banho de tinta alguns anos atrás. Possui motor 6 cilindros em linha.",
   price: 66000,
   user: user2,
   address: "Rua Conselheiro Mafra, 656 , Santa Catarina, SC")

Car.create!(brand: 'Mini Morris',
 model: '1971',
  color: 'Laranja',
   year: 1971,
   description: "Todo original, com todas as peças originais. Recebeu um banho de tinta alguns anos atrás. Possui motor 6 cilindros em linha.",
   price: 99000,
   user: user2,
   address: "Avenida Alberto bins, 665 , Porto Alegre, RS")

Car.create!(brand: 'Chevrolet',
 model: '1976',
  color: 'Vermelho',
   year: 1976,
   description: "Suas linhas são harmoniosas, como sua cor vermelha demarca bem. Então, ela está realmente linda, porque a cor escura denunciaria qualquer falha.",
   price: 159000,
   user: user2,
   address: "Rua vigário José inácio, 718 , Porto Alegre, RS")

Car.create!(brand: 'GM',
 model: 'Camaro L Type',
  color: 'Amarelo',
   year: 1974,
   description: "Motor GM 6cc, rodas  aro 17”  na dianteira e 18”na Traseira, tapeçaria nova com interior esportivo na cor preta, volante esportivo com direção hidráulica, vidros elétricos.",
   price: 78000,
   user: user2,
   address: "Avenida Adolfo Konder, 2543, Urubici, SC")

Car.create!(brand: 'MG',
 model: 'Roadster',
  color: 'Verde',
   year: 1958,
   description: "Completamente original, com sua carroceria perfeita e alinhada, sem ferrugens ou defeitos. As curvas acentuam bem o design do carro, dando suavidade, beleza e estilo.",
   price: 229000,
   user: user2,
   address: "Rua Domingos Peneda, 947, Paranaguá, PR")

Car.create!(brand: 'Vemag',
 model: 'Belcar',
  color: 'Azul',
   year: 1965,
   description: "Esse carro tem uma carroceria muito boa, sem ferrugem, amassados ou riscos, sua estrutura é muito solida  e tem um ótimo alinhamento.",
   price: 50000,
   user: user2,
   address: "Rua Visconde do Rio Branco, 931, Curitiba, PR")

Car.create!(brand: 'Borgward',
 model: 'Isabella Coupé ',
  color: 'Azul',
   year: 1958,
   description: "Carro está muito integro e com todos seus itens originais, motor e câmbio funcionando perfeitamente.",
   price: 84000,
   user: user2,
   address: "Rua Domingos Peneda, 1143, Paranaguá, PR")

Car.create!(brand: 'Ford',
 model: 'Mustang Fastback',
  color: 'Vermelho',
   year: 1965,
   description: "Muscle car Americano,  passou por um processo completo de restauração e esta em muito bom estado, possui motor V8 289 e cambio automático.",
   price: 425000,
   user: user2,
   address: "Rua Marechal Deodoro, 869, Curitiba, PR")


# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
# Car.create!(brand: , model: , color: , year: , description: , price:)
