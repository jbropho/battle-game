RSpec.feature "Start a new game", :type => :feature do
  before(:each) do
    visit "/"
    fill_in "player_one", :with => "Dave"
    fill_in "player_two", :with => "John"
    click_button "Submit"
  end

  scenario "User submits player names" do
    expect(page).to have_text("Dave")
    expect(page).to have_text("John")
  end

  scenario "Page has player hitpoints" do
    player_one = page.find_by_id("playerOnePoints")
    expect(player_one).to have_text("100")
    player_two = page.find_by_id("playerTwoPoints")
    expect(player_two).to have_text("100")
  end
end
