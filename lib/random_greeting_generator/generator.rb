module RandomGreetingGenerator
  class Generator
    def self.random_greeting name 
      greetings = ["Hello","Bonjour","Hola","Guten tag",
        "Hej","Salve","Nǐ Hǎo","Xin chào","Hei","Ahoj"
      ]
      "#{greetings.sample}, #{name}"
    end
  end
end
