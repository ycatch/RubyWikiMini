# RubyWikiMini
# HTML main page

require_relative './wiki'

class Page
    def initialize(params)
        @params = params
    end

    def main
      wiki = Wiki.new
      "<h1>RubyWikiMini</h1>" + 
      "<p>#{@params}</p>" +
      "<p>#{wiki.main}</p>"
    end
end
