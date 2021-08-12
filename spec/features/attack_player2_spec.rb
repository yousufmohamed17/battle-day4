require_relative "../../lib/app"

feature "Can attack player 2 and get confirmation" do
  scenario "sign_in_and_play, attack Joe and get confirmation" do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content("Joe was attacked!")
  end
end