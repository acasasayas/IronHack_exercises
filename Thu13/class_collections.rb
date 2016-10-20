class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end

end
	def array_printer(array)
  		array.each do | language |
    	puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  		end
	end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

  #array_printer(array_of_languages)

  aged_languages = array_of_languages.map do |language|
  					language.age += 1
  					language
  				end

  array_printer(aged_languages)

  puts "----------------------------------------"

  array_sorted = array_of_languages.sort do |language1,language2|
  					language2.age <=> language1.age
  				end

array_printer(array_sorted)

  puts "----------------------------------------"

array_no_java = array_of_languages.delete_if {|language| language.name == "Java"}

array_printer(array_no_java.shuffle!)