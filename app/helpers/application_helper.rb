module ApplicationHelper

private

  def current_user_info
    UserInfo.find_by(user_id: current_user.id)
  end

  def comment_user_info(comment)
    UserInfo.find_by(user_id: comment.user_id)
  end

  def current_user?(user)
    user == current_user
  end

end
