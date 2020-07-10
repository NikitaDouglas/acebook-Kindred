# frozen_string_literal: true

class Post < ApplicationRecord

  belongs_to :user
  
  def likes
    Like.all
  end

end
