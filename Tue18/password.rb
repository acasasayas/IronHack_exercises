class Counter

	def initialize 

		puts "Put your string and we will print the number of words:"

	end

	def counter_words( string)
		separate = string.split(" ")
		puts separate.length
	end


end

class Login 

	attr_reader :logged, :user
	def initialize (user)
		@user = user
		@logged = false
	end
	def check_in (user_password,password)
		if user_password == password
			@logged = true
		else
			@logged = false
		end
	end
end

login = {
	"Alex" => "mantequilla",
	"Lluc" => "patata",
}
puts "User: "
user_login = Login.new(gets.chomp)

puts "Password: "

user_login.check_in(login[user_login.user],gets.chomp)

if user_login.logged == true
	counter = Counter.new
	counter.counter_words(gets.chomp)
else
	puts "Wrong password"
end





