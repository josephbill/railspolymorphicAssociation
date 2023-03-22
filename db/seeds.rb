articles = ['First article', 'Second article', 'Third article']
articles.map do |title|
  Article.create(title: title, body: 'This is the ' + title.downcase + '.')
end

photos = ['First photo', 'Second photo', 'Third Photo']
photos.map do |title|
  Photo.create(title: title, image_url: 'https://example.com/' + title.downcase.gsub(' ', '') + '.jpg')
end

comments = [
  { body: 'Great article!' },
  { body: 'Nice photo!' },
  { body: 'Nice check!' },

]

Article.all.each do |article|
  article.comments.create(comments.sample)
end

Photo.all.each do |photo|
  photo.comments.create(comments.sample)
end
