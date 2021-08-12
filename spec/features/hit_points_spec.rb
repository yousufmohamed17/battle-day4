require_relative "../../lib/app"

feature "Can see player 2's hit points" do
  scenario "sign_in_and_play and see Joe's hit points" do
    sign_in_and_play
    expect(page).to have_content("Joe's HP: 60")
  end
end