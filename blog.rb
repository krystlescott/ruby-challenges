=begin
class Blog

  @@total_blogposts = 0
  @@all_blogposts = []

  def initialize
    @@total_blogposts += 1

    @@all_blogposts.each do |post|
      @@all_blogposts.push(BlogPost)
    end
  end

  def publish
    @@all_blogposts.each do |post|
      puts "Title: #{title}"
      puts "Author: #{author}"
      puts "Content: #{content}"
      puts "Publish Date: #{publish_date}"
    end
  end
end

class BlogPost < Blog

  attr_accessor :title, :content, :publish_date, :author

  def initialize
    @title = title
    @content = content
    @publish_date = publish_date
    @author = author
  end

  def save
    @@all_blogposts.push(BlogPost)
  end

  def new_post(title, content, publish_date, author)
    post = BlogPost.new
    puts "What is the title of your blog post?"
    post.title = gets.chomp
    puts "What is your name?"
    post.author = gets.chomp
    puts "Write the contents of your post here:"
    post.content = gets.chomp
    puts "Enter today's date:"
    post.publish_date = gets.chomp
    post.save
    puts "Do you want to create another blog post? [Y/N]"
    if gets.chomp.downcase == 'y' then new_post(title, content, publish_date, author)
  end


end

BlogPost.new.new_post("My First Blog", "Yaay! I finally got this to work!", "01/26/2016", "Krystle Scott") end
=end
class Blog

  @@all_blog_posts = []
  @@num_blog_posts = 0

  def self.all
    @@all_blog_posts
  end

  def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end

end


class BlogPost < Blog

  def self.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
 #returns if not ‘y’ and stops the rest of the script from running. otherwise, continues to run ‘create’ method.
  end

  def title
    @title
  end

  def title=(title) # a setter method always takes an argument
    @title = title # don't forget to set the instance variable
  end

  def created_at
    @created_at
  end

  def created_at=(created_at)
    @created_at = created_at
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end

  def save
    BlogPost.add(self)
  end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
