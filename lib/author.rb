# An author should have many posts and a post should belong to an author.

class Author

    attr_accessor :name

   # @@all = []

    def initialize(name)
        @name = name
    end

    def posts
       Post.all
    end

    def add_post(post)  # takes in an argument of a post...
        post.author = self
        # and associates that post with the author by telling the post that it belongs to that author
    end

    def add_post_by_title(title) # takes in an argument of a name
        post = Post.new(title)
        post.author = self
    # use that argument to create a new post 
    # and then associate the objects. These methods don't need to return anything.
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def self.post_count
        Post.all.count
    end
    
end