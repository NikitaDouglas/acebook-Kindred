def add_post_helper
  Post.new
  Post.create(message: "My first post")
end
