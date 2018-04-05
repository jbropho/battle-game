require 'pry'
RSpec.feature "Attack a player", :type => :feature do
  before(:each) do
    sign_in_and_play
  end

  scenario "playerOne attacks playerTwo" do
    find('input[id="p2_attack"]').click
    expect(page).to have_text("You attacked player1!")
  end

  scenario "playerTwo looses 10 health when attacked" do
    p2_health_before = page.find_by_id("p2Health").text
    attack = find('input[id="p1_attack"]')
    attack.click
    p2_health_after = page.find_by_id("p2Health").text
    expect(p2_health_before.to_i - p2_health_after.to_i).to eq 10
  end

  scenario "playerOne attacks two times in a row" do
    attack = find('input[id="p2_attack"]')
    attack.click
    p1_health = page.find_by_id("p1Health").text
    attack.click
    p1_health_after = page.find_by_id("p1Health").text
    expect(p1_health.to_i - p1_health_after.to_i).to eq 0
  end
end
