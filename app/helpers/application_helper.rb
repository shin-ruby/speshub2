module ApplicationHelper

private

  def current_user_info
    UserInfo.find_by(user_id: current_user.id)
  end

  def current_user_info_photo?
    info_photo = UserInfo.find_by(user_id: current_user.id)

    info_photo.nil? || info_photo.avatar_file_name.blank?
  end

  def comment_user_info(comment)
    UserInfo.find_by(user_id: comment.user_id)
  end

  def current_user?(user)
    user == current_user
  end

  def user_info_name(a)
    UserInfo.find_by(user_id: a.send_id)
  end



end
