Given("these following users exists") do |table|
  table.hashes.each do |user|
    create(:user, user)
  end
end

Given("these following posts exists") do |table|
  table.hashes.each do | post |
    forum = Forum.find_or_create_by(name: post[:forum])
    user = User.find_by(email: post[:user])
    create(:post, post.except("forum", "user", "likes").merge(forum: forum, user_id: user.id))
  end
end

Given("I am logged in as {string}") do |email|
  user = User.find_by(email: email)
  login_as user
end

Given("I visit the site") do
  visit root_path
end

Given("I click on {string}") do |button_or_link|
  click_on button_or_link
end

When("I click like on {string} post") do |user|
  binding.pry
end
