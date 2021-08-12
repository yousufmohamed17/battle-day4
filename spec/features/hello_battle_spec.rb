require_relative "../../lib/app"

feature "Home page has required script" do
  scenario "says hello battle on home page" do
    visit("/")
    expect(page).to have_content("Hello Battle!")
  end
end