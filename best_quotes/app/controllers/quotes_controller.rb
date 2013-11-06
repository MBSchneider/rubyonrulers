# best_quotes/app/controllers/quotes_controller.rb

class QuotesController < Rulers::Controller
  def a_quote
    render :a_quote, :noun => :napping
  end

  def exception
    raise "It's a bad one!"
  end
end
