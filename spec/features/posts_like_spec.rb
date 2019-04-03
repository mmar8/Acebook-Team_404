# frozen_string_literal: true
# The functionality in these tests should cover the following:
# 1. Posts should have a 'like' button
# 2. Like button increments or decrements number of likes
# 3. Number of likes is shown on the button

require 'rails_helper'

RSpec.feature 'Posts have like functionality', type: :feature do
  scenario 'all posts will show like option' do
    create_user
    click_link 'New post'
    fill_in 'Message', with: 'Testing like button exists'
    click_button 'Post'
    expect(page).to have_selector(:link_or_button, 'LIKE')
  end
end
