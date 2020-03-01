class FaqController < ApplicationController
  
  def index
    @faqs = Faq.order('id desc').limit(10)
  end
  
  def search
    @faqs = Faq.where('question LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
  
  def show
    @faqs = Faq.where('classification LIKE(?)', "%#{params[:classification]}%").limit(20)
  end
  
end
