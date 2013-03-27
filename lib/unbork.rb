module Unbork
  class << self
    def swedish
      @@swedish ||= learn_swedish
    end

    def learn_swedish
      subst_filename = File.join(File.dirname(__FILE__), 'unmangle-utf8-script.sed')
      swedish = {}
      File.open(subst_filename).each do |line|
        next if line =~ /latin1/
        s, borked, unborked, g = line.split('/')
        swedish[borked] = unborked
      end
      swedish
    end
    
    def swedish_letters
      Regexp.union(swedish.keys)
    end

    def unbork text
      if RUBY_VERSION > "1.9"
        text.gsub(swedish_letters, swedish)
      else
        text.gsub(swedish_letters) do |match|
          swedish[match]
        end
      end
    end
  end
end

def unbork text
  Unbork.unbork text
end
