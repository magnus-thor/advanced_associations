Given("these following users exists") do |table|
  table.hashes.each do |user|
    create(user)
  end
end

Given("these following posts exists") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am logged in as {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I visit the site") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click on {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click like on {string} post") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
