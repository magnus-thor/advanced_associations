Then("I should see {string} post has {string} likes") do |title, count|
  post = Post.find_by(title: title)
  dom_section = "#post_#{post.id}"
  content = "count: #{count}"
  within dom_section do
    expect(page).to have_content content
  end
end

Then("I should not be able to click on like again on post {string}") do | title |
  post = Post.find_by(title: title)
  dom_section = "#post_#{post.id}"
  within dom_section do
    expect(page).not_to have_button 'Like'
  end
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end
