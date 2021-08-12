require_relative "../../lib/app"

feature "Can fill in names on home page and see those names" do
  scenario "sign_in_and_play and see John vs Joe" do
    sign_in_and_play
    expect(page).to have_content("John vs Joe")
  end
end