# An author should have many posts and a post should belong to an author.

# For add_post_by_title, you'll want to make sure the body of the method associates the newly created post with an author.
# These methods don't need to return anything, they just create associations


class Post
    attr_accessor :author, :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        author.name if author
    end

end