module ApplicationHelper

	def default_meta_tags
		{
		  :title          => 'AdventureMade - One of a Kind Collaborative Group Adventures',
		  :description    => 'Discover unique group adventures created by travelers with local guides.',
		}
	end

	def default_og_tags
	    return {
	      :title          => 'AdventureMade - One of a Kind Collaborative Group Adventures',
	      :type           => 'website',
	      :url            => "#{root_url}",
	      :description    => 'Discover unique group adventures created by travelers with local guides.',
	      :image          => 'http://imgur.com/de8OFWc'
	    }
	end

	def default_twitter_tags
	    return {
	      :card           => 'summary',
	      :site           => '@adventuremade',
	      :title          => 'AdventureMade - One of a Kind Collaborative Group Adventures',
	      :description    => 'Discover unique group adventures created by travelers with local guides.',
	      :image          => {
	                          :_ => 'http://imgur.com/de8OFWc'
	                        }
	    }
	end
end
