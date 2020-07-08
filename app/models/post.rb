# frozen_string_literal: true

class Post < ApplicationRecord

  def likes
    # p "hello"
    # Like.find_by(post_id: id)
    Like.all
  end

end
