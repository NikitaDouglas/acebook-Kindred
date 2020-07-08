# frozen_string_literal: true

class Post < ApplicationRecord

  def likes
    Like.all
  end
end
