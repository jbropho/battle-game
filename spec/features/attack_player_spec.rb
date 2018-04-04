RSpec.feature "Attack a player", :type => :feature do
  before(:each) do
    sign_in_and_play
  end

  scenario "playerOne attacks playerTwo" do
    # p1_attack = page.find_by_id("p1_attack")
    p2_health = page.find_by_id("p2Health")
    find('input[id="p2_attack"]').click
    expect(page).to have_text("You attacked player1!")
  end
end
