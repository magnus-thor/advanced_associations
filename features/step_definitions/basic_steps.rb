Given("these following users exists") do |table|
  table.hashes.each do |user|
    create(:user, user)
  end
end

Given("these following posts exists") do |table|
  table.hashes.each do | hash |
    forum = Forum.find_or_create_by(name: hash[:forum])
    user = User.find_by(email: hash[:user])
    post = create(:post, hash.except("forum", "user", "likes").merge(forum: forum, user_id: user.id))
    hash[:likes].to_i.times do
      create(:like, post: post)
    end
  end
end

Given("I am logged in as {string}") do |email|
  @user = User.find_by(email: email)
  login_as @user
end

Given("I visit the site") do
  visit root_path
end

Given("I click on {string}") do |button_or_link|
  click_on button_or_link
end

When("I click like on {string} post") do |title|
  post = Post.find_by(title: title)
  dom_section = "#post_#{post.id}"
  within dom_section do
    click_on 'Like'
  end
end

Given("Show me the page") do
  save_and_open_page
end
