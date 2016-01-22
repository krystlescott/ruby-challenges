class Blog

  @@total_blogposts = 0
  @@all_blogposts = []

  def initialize
    @@total_blogposts += 1
  end
end

class BlogPost < Blog

  puts "Do you want to create another blog post? [Y/N]"
  answer = gets
  if (answer == "Y")


  def set_title=(title)
    @title = title
  end

  def get_title
    return @title
  end

  def set_content=(content)
    @content = content
  end

  def get_content
    return @content
  end

  def set_publish_date=(publish_date)
    @publish_date = publish_date
  end

  def get_publish_date
    return @publish_date
  end

  def set_author=(author)
    @author = author
  end

  def get_author
    return @author
  end

  def publish
    puts
  end
end
