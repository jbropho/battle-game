RSpec.feature "Sumbmit player names", :type => :feature do
  scenario "User submits player names" do
    visit "/"

    fill_in "player_one", :with => "Dave"
    fill_in "player_two", :with => "John"
    click_button "Submit"

    expect(page).to have_text("Dave")
    expect(page).to have_text("John")
  end
end
