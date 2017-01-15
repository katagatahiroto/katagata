module UsersHelper
  def is_current_user?(user_id)
    if current_user && current_user.id == user_id
      return true
    end
    return false
  end
end
