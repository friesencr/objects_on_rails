require_relative '../../app/models/post'

describe Post do
  before do
    @it = Post.new
  end

  it "starts with blank attributes" do
    @it.title.should be nil
    @it.body.should be nil
  end

  it "supports reading and writing title" do
    @it.title = "foo"
    @it.title.should be "foo"
  end

  it "supports reading and writing a post body" do
    @it.body = "foo"
    @it.body.should be "foo"
  end

  it "supports reading and writing a blog reference" do
    blog = Object.new
    @it.blog = blog
    @it.blog.should equal blog
  end

  describe "#publish" do
    before do
      @blog = double()
    end
  end

end
