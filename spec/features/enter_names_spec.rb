require_relative "../../lib/app"

feature "Can fill in names on home page and see those names" do
  scenario "fill in John and Joe and see those names" do
    visit("/")
    fill_in("name1", with: 'John')
    fill_in("name2", with: 'Joe')
    click_button("Submit")
    expect(page).to have_content("John vs Joe")
  end
end