class UserMailer < ApplicationMailer
    def new_comment_notification(post_owner, comment)
      @post_owner = post_owner
      @comment = comment
      mail(to: post_owner.email, subject: "New comment on your post")
    end
  end
  