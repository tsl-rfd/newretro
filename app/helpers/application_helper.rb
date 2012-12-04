module ApplicationHelper
  
  def signin_url
    if Rails.env.development?
      'auth/developer'
    else
      'auth/twitter'
    end
  end
end
