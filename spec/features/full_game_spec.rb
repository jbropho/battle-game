RSpec.feature 'loose a game', :type => :feature do
  before(:each) do
    sign_in_and_play
  end

  scenario 'player1 wins a game' do
    Attack.any_instance.stub(:damage).and_return(10)
    p1_attack = find('input[id="p1_attack"]')
    p2_attack = find('input[id="p2_attack"]')
    9.times do
      p1_attack.click
      p2_attack.click
    end
    p1_attack.click
    expect(page).to have_text("Dave wins!")
  end
end
