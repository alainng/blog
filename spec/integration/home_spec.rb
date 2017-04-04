require 'rails_helper'

describe 'home page' do
  context 'index' do
    it 'welcomes the user' do
      visit '/'
      expect(page).to have_content('All Articles')
    end
    it 'has a login button' do
      visit '/'
      expect(page).to have_selector(:link_or_button,'login')
    end
  end

end
