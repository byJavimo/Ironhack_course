class Blog

	attr_accessor :container
	def initialize
		@container = []
	end
	def publish_front_page
		@container.each do |x| 
			puts "\n #{x.title} // #{x.date}"
			puts "****************************"
			puts "#{x.text}"
			puts "****************************\n"
		end 
	end

end

class Post
	attr_accessor :title, :date, :text
	def initialize title, date, text
		
		@title = title
		@date = date
		@text = text

	end

end
	
Blog = Blog.new()




Post_1 = Post.new "Como hacer paella", "11/04/2015", "Primero, frie la cebolla, el ajo..."
Post_2 = Post.new "Como hacer brownie"," 12/04/2015", "En primer lugar, pon a calentar el horno..."


Blog.container.push(Post_1)
Blog.container.push(Post_2)

Blog.publish_front_page