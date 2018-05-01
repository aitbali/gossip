# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])



Movie.destroy_all
Director.destroy_all

a = Director.create(first_name: "David", lastname: "Fisher")
Movie.create(title: "Fight Club", release_year: 1999, director_id: a.id)
b = Director.create(first_name: "Stanley", lastname: "Kubrick")
Movie.create(title: "Full Metal Jacket", release_year: 1987, director_id: b.id)
c = Director.create(first_name: "Wilson", lastname: "Yip")
Movie.create(title: "Ip Man", release_year: 2008, director_id: c.id)
d = Director.create(first_name: "John", lastname: "Woo")
Movie.create(title: "Bullet in the head", release_year: 1993, director_id: d.id)
e = Director.create(first_name: "Tim", lastname: "Burton")
Movie.create(title: "Edward aux mains d'argent", release_year: 1990, director_id: e.id)