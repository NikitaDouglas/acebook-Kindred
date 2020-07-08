# frozen_string_literal: true

def add_post_helper
  Post.new
  Post.create(message: 'My first post')
end
