# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ユーザーデータを１０個繰り返し処理で作成
10.times do |n|
  User.create!(
    email: "test#{n + 1}@gmail.com",
    name: "テストユーザー#{n + 1}",
    password: "testpass#{n + 1}",
  )
end

#ジャンルデータの作成
#親要素レディースジャンルに対して子要素ジャンルの割り当て
lady = Genre.create(name: 'レディース')
_outer, _tops, _pants, _skirt, _one_pirce, _bag, _shoes, _accessories, _other = lady.children.create(
  [
    {name: 'アウター'},
    {name: 'トップス'},
    {name: 'パンツ'},
    {name: 'スカート'},
    {name: 'ワンピース'},
    {name: 'バック'},
    {name: 'シューズ'},
    {name: '小物'},
    {name: 'その他'},
  ]
) 

#親要素メンズジャンルに対して子要素ジャンルの割り当て
mens = Genre.create(name: 'メンズ')
_outer, _tops, _pants, _bag, _shoes, _accessories, _other = mens.children.create(
  [
    {name: 'アウター'},
    {name: 'トップス'},
    {name: 'パンツ'},
    {name: 'バック'},
    {name: 'シューズ'},
    {name: '小物'},
    {name: 'その他'},
  ]
) 
