puts "============================================"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Porchetta short ribs ham, filet mignon picanha prosciutto leberkas landjaeger jowl ham hock. Picanha boudin frankfurter capicola, pancetta shankle bacon pork chop brisket meatloaf tail buffalo. Frankfurter ground round fatback, beef buffalo cupim hamburger cow landjaeger brisket bresaola biltong spare ribs. Sausage shoulder picanha short ribs, sirloin tail pork capicola meatloaf. Prosciutto sirloin capicola fatback filet mignon venison jerky sausage. Hamburger pork landjaeger, ham buffalo pig shankle tongue short ribs shank bacon prosciutto tenderloin. Short loin ham spare ribs sausage pastrami salami pork chop cow.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: rand(100)
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  PortfolioItem.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby On Rails",
    body: "Porchetta short ribs ham, filet mignon picanha prosciutto leberkas landjaeger jowl ham hock. Picanha boudin frankfurter capicola, pancetta shankle bacon pork chop brisket meatloaf tail buffalo.",
    thumb_image: "http://placehold.it/350x200",
    main_image: "http://placehold.it/600x400"
  )
end

PortfolioItem.create!(
    title: "Portfolio title: Angular Item",
    subtitle: "Angular",
    body: "Porchetta short ribs ham, filet mignon picanha prosciutto leberkas landjaeger jowl ham hock. Picanha boudin frankfurter capicola, pancetta shankle bacon pork chop brisket meatloaf tail buffalo.",
    thumb_image: "http://placehold.it/350x200",
    main_image: "http://placehold.it/600x400"
  )
puts "9 porfolio items created"

3.times do |technology|
  PortfolioItem.last.technologies.create!(
    name: "Technology #{technology}"
  )
end
puts "3 technologies created"