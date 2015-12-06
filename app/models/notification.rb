class Notification < ActiveRecord::Base
	belongs_to :article
	belongs_to :user

	def deliver
		twilio_client.messages.create(
		  from: '+19177461917',
		  to: user.mobile_number,
		  body: article.body
		)
	end

	private

	def twilio_client
		@twilio_client ||= Twilio::REST::Client.new
		# sets up connection with twilio - memoization
		# uses || to say if it's called, don't do it again
		# used for caching?
	end

end
