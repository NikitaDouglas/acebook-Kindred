# frozen_string_literal: true

def sign_up
  user = User.create!(email: 'test@example.com', password: 'f4k3p455w0rd')
  # visit ('/')
  login_as(user, scope: :user)
end
