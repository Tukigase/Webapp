# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
stock = Stock.create(
    name: "M10ナット",
    num: 1,
    detail:"M10のボルトの対になる締めるための材料",
    image: File.open("./app/assets/images/初期画像/M10nut.jpg") 
)
stock = Stock.create(
    name: "M8ナット",
    num: 2,
    detail:"M8のボルトの対になる締めるための材料",
    image: File.open("./app/assets/images/初期画像/M8nut.jpg") 
)
stock = Stock.create(
    name: "M6ナット",
    num: 3,
    detail:"M6のボルトの対になる締めるための材料",
    image: File.open("./app/assets/images/初期画像/M6nut.jpg") 
)
