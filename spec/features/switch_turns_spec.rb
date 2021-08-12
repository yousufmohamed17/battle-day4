require_relative "../../lib/app"

feature "displays whose turn it is" do
  scenario "sign_in_and_play, it's John's turn" do
    sign_in_and_play
    expect(page).to have_content("It is John's turn")
  end
end

feature "allows players to switch turn" do
  scenario "after John attacks, switch turn, it's Joe's turn" do
    sign_in_and_play
    click_button('Attack')
    click_button('Switch')
    expect(page).to have_content("It is Joe's turn")
  end
end
