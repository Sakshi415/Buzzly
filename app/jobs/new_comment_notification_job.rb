class NewCommentNotificationJob < ApplicationJob
    queue_as :default
    # require "#{Rails.root}/app/mailers/user_mailer.rb"

  
    def perform(comment_id)
      comment = Comment.find_by(id: comment_id)
      post_owner = comment.post.user
      # Send notification email to post owner
      UserMailer.new_comment_notification(post_owner, comment).deliver
    end
  end
  