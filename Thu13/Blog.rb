class Blog
	def initialize
		@posts = []
	end
	def add_post (post)
		@posts << post
		@posts.sort! {|day1,day2| day2.date <=> day1.date}
	end
	def show_posts
		@posts.each do |post|
			post.show_post
			end
	end
end

class Post
	attr_reader :date
	def initialize  (title,date,sponsor)
	@title = title
	@date = date
	@text
	@sponsored = sponsor
	end
	def add_text (string)
		@text  = string
	end
	def show_post
		if @sponsored == true
			puts "***** #{@title.upcase} *****"
		else
			puts @title.upcase
		end
		puts "**************************\n"
		
		print @date.strftime("(%A, %d of %B, %Y)")
		puts " "
		puts @text
		puts "--------------------------"
	end
end
 
first_post = Post.new("Hello World!",Time.local(2015,8,7),false)
second_post = Post.new("Second Post",Time.local(2016,11,10),false)
third_post = Post.new("Sponsor!",Time.local(2016,9,9),true)
fifth = Post.new("Die Welle",Time.local(2016,2,9),false)
sixth = Post.new("Local time in Barcelona",Time.local(2016,6,12),false)
first_post.add_text("This shall be the last post")
second_post.add_text("This is the second Post, but apears first")
third_post.add_text("WIN A FANTASTIC PRIZE, CALL 92384825")
blog = Blog.new
blog.add_post(first_post)
blog.add_post(second_post)
blog.add_post(third_post)
blog.add_post(fifth)
blog.add_post(sixth)
blog.show_posts



