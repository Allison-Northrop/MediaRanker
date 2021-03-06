require "test_helper"

describe WorksController do

  describe "index" do
    it "should get index" do
      get :index, params: { category: "book" }
      must_respond_with :success
    end

    it "returns a collection of works based off of the category" do
      get :index, params: { category: "book" }
      assigns(:works).must_equal([works(:two)])
      # don't have to test if it's the correct category because the model already does that/tests
    end

    it "is succssful when there are zero works" do
      Work.destroy_all
      get :index, params: { category: "book" }
      must_respond_with :success
    end
  end

  describe "show" do
    it "should get show" do
      get :show, params: { id: 1 }
      must_respond_with :success
    end

    it "returns 404 for a work that DNE" do #TODO NOT SURE WHY THIS IS FAILING
      work_id = Work.last.id + 1
      get :show, params: { id: 1 }
      must_respond_with :not_found
    end
  end

  describe "new" do
    it "should get new" do
      get :new
      must_respond_with :success
    end
  end

  describe "create" do
    it "should create a new instance of Work/add it to the database" do
      work_data = { work: { category: "book", title: "Book Title", creator: "MyString", publication_year: 1, description: "book description"} }
      post works_path, params: work_data
      # must_redirect_to :index
    end

    it "should redirect to works path" do
    end

    it "should render a new book if the book is not saved" do
    end
  end

  describe "edit" do

    it "should return/show an instance of work to edit" do
      get :edit, params: { id: 1 }
      must_respond_with :success
    end

  end

  describe "update" do
    it "should return/show the correct instace of work to update " do
    end

    it "should save the updated instance fo Work" do
    end

  end

end
