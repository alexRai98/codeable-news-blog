class Post < LazyRecord
    attr_accessor :title,:author,:image,:body
    def initialize(title,author,img,body)
        @title = title
        @author =author
        @image = img
        @body = body
    end
end