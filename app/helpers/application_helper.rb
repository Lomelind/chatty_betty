module ApplicationHelper

	def full_title(title = '')
		base = "BettyChat"
		if title.empty?
			base
		else
			title
		end
	end
end
