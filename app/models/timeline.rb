class Timeline < ActiveRecord::Base
	belongs_to :user
	has_many :events

	def render_description
		renderer = WikiRender.new(filter_html: true, hard_wrap: true)
		markdown = Redcarpet::Markdown.new(renderer, autolink: true, no_intra_emphasis: true)
		markdown.render(self.description)
	end
end

