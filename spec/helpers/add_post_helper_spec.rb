# frozen_string_literal: true

# def add_post_helper
#  p  Post.new
#  p Post.create(id: 2, message: "Hello world!", created_at: "2020-07-09 14:44:28", updated_at: "2020-07-09 14:44:28", name: "Sophie", user_id: 1)
# end

def add_post_helper
    visit('/posts')
    click_link 'Write a post...'
    fill_in 'Name', with: 'Sophie'
    fill_in 'Message', with: 'Hello world!'
    click_button 'Submit'
end

