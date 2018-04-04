RSpec.feature "Attack a player", :type => :feature do
  before(:each) do
    sign_in_and_play
  end

  scenario "playerOne attacks playerTwo" do
    find('input[id="p2_attack"]').click
    expect(page).to have_text("You attacked player1!")
  end

  scenario "playerTwo looses health when attacked" do
    p2_health = page.find_by_id("p2Health").text
    attack = find('input[id="p2_attack"]')
    expect { attack.click }.to change{ p2_health }.from("100").to("90")
  end
end
