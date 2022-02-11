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
    introduction: "テストユーザー#{n + 1}による自己紹介です",
    password: "testpass#{n + 1}",
  )
end

#ジャンルデータの作成
Genre.create!(
  [
    {
      name: "アウター"
    },
    {
      name: "トップス"
    },
    {
      name: "パンツ"
    },
    {
      name: "スカート"
    },
    {
      name: "ワンピース"
    },
    {
      name: "バッグ"
    },
     {
      name: "シューズ"
    },
    {
      name: "小物"
    },
    {
      name: "その他"
    },
  ]
)

PostImage.create!(
  [
    {
      user_id: 1,
      genre_id: 1,
      title: "アウター1",
      introduction: "アウター1の投稿写真です。",
      image: File.open("./app/assets/images/posts/outer1.jpg")
    },
    {
      user_id: 1,
      genre_id: 6,
      title: "バッグ2",
      introduction: "バッグ2の投稿写真です。",
      image: File.open("./app/assets/images/posts/bag2.jpg")
    },
    {
      user_id: 2,
      genre_id: 1,
      title: "アウター2",
      introduction: "アウター2の投稿写真です。",
      image: File.open("./app/assets/images/posts/outer2.jpg")
    },
    {
      user_id: 2,
      genre_id: 7,
      title: "シューズ1",
      introduction: "シューズ1の投稿写真です。",
      image: File.open("./app/assets/images/posts/shoes1.jpg")
    },
    {
      user_id: 3,
      genre_id: 2,
      title: "トップス１",
      introduction: "トップス１の投稿写真です。",
      image: File.open("./app/assets/images/posts/tops1.jpg")
    },
    {
      user_id: 3,
      genre_id: 7,
      title: "シューズ2",
      introduction: "シューズ2の投稿写真です。",
      image: File.open("./app/assets/images/posts/shoes2.jpg")
    },
    {
      user_id: 4,
      genre_id: 2,
      title: "トップス2",
      introduction: "トップス2の投稿写真です。",
      image: File.open("./app/assets/images/posts/tops2.jpg")
    },
    {
      user_id: 4,
      genre_id: 8,
      title: "小物1",
      introduction: "小物1の投稿写真です。",
      image: File.open("./app/assets/images/posts/accessories1.jpg")
    },
    {
      user_id: 5,
      genre_id: 3,
      title: "パンツ1",
      introduction: "パンツ1の投稿写真です。",
      image: File.open("./app/assets/images/posts/pants1.jpg")
    },
     {
      user_id: 5,
      genre_id: 8,
      title: "小物2",
      introduction: "小物2の投稿写真です。",
      image: File.open("./app/assets/images/posts/accessories2.jpg")
    },
    {
      user_id: 6,
      genre_id: 3,
      title: "パンツ2",
      introduction: "パンツ2の投稿写真です。",
      image: File.open("./app/assets/images/posts/pants2.jpg")
    },
     {
      user_id: 6,
      genre_id: 9,
      title: "その他1",
      introduction: "その他1の投稿写真です。",
      image: File.open("./app/assets/images/posts/other1.jpg")
    },
    {
      user_id: 7,
      genre_id: 4,
      title: "スカート1",
      introduction: "スカート1の投稿写真です。",
      image: File.open("./app/assets/images/posts/skirt1.jpg")
    },
       {
      user_id: 7,
      genre_id: 9,
      title: "その他2",
      introduction: "その他2の投稿写真です。",
      image: File.open("./app/assets/images/posts/other2.jpg")
    },
    {
      user_id: 8,
      genre_id: 4,
      title: "スカート2",
      introduction: "スカート2の投稿写真です。",
      image: File.open("./app/assets/images/posts/skirt2.jpg")
    },
    {
      user_id: 9,
      genre_id: 5,
      title: "ワンピース1",
      introduction: "ワンピース1の投稿写真です。",
      image: File.open("./app/assets/images/posts/one_pirce1.jpg")
    },
    {
      user_id: 10,
      genre_id: 5,
      title: "ワンピース2",
      introduction: "ワンピース2の投稿写真です。",
      image: File.open("./app/assets/images/posts/one_pirce2.jpg")
    },
    {
      user_id: 10,
      genre_id: 6,
      title: "バッグ1",
      introduction: "バッグ1の投稿写真です。",
      image: File.open("./app/assets/images/posts/bag1.jpg")
    },
  ]
)