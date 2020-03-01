class FaqController < ApplicationController
  
  def index
    @faqs = Faq.all.limit(10)
  end
end
