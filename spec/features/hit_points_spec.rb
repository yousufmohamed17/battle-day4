require_relative "../../lib/app"

feature "Can see player 2's hit points" do
  scenario "fill in John and Joe and see Joe's hit points" do
    visit("/")
    fill_in("name1", with: 'John')
    fill_in("name2", with: 'Joe')
    click_button("Submit")
    expect(page).to have_content("Joe's HP: 60")
  end
end