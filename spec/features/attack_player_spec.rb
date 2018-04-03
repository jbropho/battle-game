RSpec.feature "Attack a player", :type => :feature do
  before(:each) do
    sign_in_and_play
  end

  scenario "playerOne attacks playerTwo" do
    p1_attack = page.find_by_id("p1_attack")
    p2_health = page.find_by_id("p2_health")
    click_button p1_attack
    expect(p2_health.value).to be < 100
  end
end
