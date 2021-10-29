puts "clearing database.."
Article.delete_all
puts "database cleared!"

puts "creating Articles"
20.times do
  Article.create(
    title: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4),
    content: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 4)
  )
end
puts "20 new Articles have been generated."