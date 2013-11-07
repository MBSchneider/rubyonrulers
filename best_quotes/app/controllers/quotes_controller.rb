# best_quotes/app/controllers/quotes_controller.rb

class QuotesController < Rulers::Controller
  def a_quote
    render :a_quote, :noun => :napping
  end

  def exception
    raise "It's a bad one!"
  end

  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth a thousand pixels",
      "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  def update_quote
    attrs = {
      "submitter" => "nu user",
      "quote" => "Don't think twice, it's alright",
      "attribution" => "Bob Dylan"
    }
    m = FileModel.update(5, attrs)
    render :quote, :obj => m
  end

  def find_quotes_from_jeff
    quotes = FileModel.find_submitter("Jeff")
    render :index, :quotes => quotes
  end

end
