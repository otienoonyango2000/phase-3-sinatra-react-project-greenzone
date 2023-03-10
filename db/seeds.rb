puts "🌱 Seeding spices..."

# Seed your database here
Movie.create(title:"Crocodile Dundee", runtime:"1986", director:"Peter Faiman", actors:"Paul Hogan, Linda Kozlowski, John Meillon, David Gulpilil", plot:"An American reporter goes to the Australian outback to meet an eccentric crocodile poacher and invites him to New York City.")
Movie.create(title:"Ratatouille", runtime:"111", director:"Brad Bird, Jan Pinkava", actors:"Patton Oswalt, Ian Holm, Lou Romano, Brian Dennehy", plot:'the dark knight')
# Review.create(comment: 'the best', movie_id: 1)
# Review.create(comment: 'lit', movie_id: 2)

puts "✅ Done seeding!"
