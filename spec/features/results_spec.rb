feature 'declare the results' do
  context 'the computer chooses paper' do
    before(:each) do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    end

    scenario 'the player chose paper' do
      register_and_play
      click_button("paper")
      expect(page).to have_content 'It\'s a draw.'
    end

    scenario 'the player chose rock' do
      register_and_play
      click_button("rock")
      expect(page).to have_content 'Sorry, you lost.'
    end

    scenario 'the player chose scissors' do
      register_and_play
      click_button("scissors")
      expect(page).to have_content 'Congratulations, you won!'
    end
  end
end
