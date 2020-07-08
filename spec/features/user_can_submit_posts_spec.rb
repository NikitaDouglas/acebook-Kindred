# frozen_string_literal: true

require 'rails_helper'
require './spec/helpers/sign_up_helper_spec.rb'

RSpec.feature 'Timeline', type: :feature do
  scenario 'Can submit posts and view them' do
    sign_up
    visit '/posts'
    click_link 'Write a post...'
    fill_in 'Message', with: 'Hello, world!'
    click_button 'Submit'
    expect(page).to have_content('Hello, world!')
  end

  scenario 'Can see posts information' do
    Timecop.freeze(Date.today)
    sign_up
    visit('/posts')
    click_link 'Write a post...'
    fill_in 'Nickname', with: 'So'
    fill_in 'Message', with: 'hey there'
    click_button 'Submit'
    expect(page).to have_content('So')
    expect(page).to have_content(Date.today)
  end
end
