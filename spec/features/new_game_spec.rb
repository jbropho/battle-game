RSpec.feature "Start a new game", :type => :feature do
  before(:each) do
    sign_in_and_play
  end

  scenario "User submits player names" do
    expect(page).to have_text("Dave")
    expect(page).to have_text("John")
  end
  
  scenario "Page has player hitpoints" do
    p1_health = page.find_by_id("p1Health")
    expect(p1_health).to have_text("100")
    p2_health = page.find_by_id("p2Health")
    expect(p2_health).to have_text("100")
  end
end
