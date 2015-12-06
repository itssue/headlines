class NotificationsController < ApplicationController

	def create
		User.all.each do |user|
			Notification.create(user: user, article: article).deliver
		end
		
		redirect_to articles_path, notice: "Text sent."
	end

	private

	def article
		Article.find(params[:article_id])
	end

end