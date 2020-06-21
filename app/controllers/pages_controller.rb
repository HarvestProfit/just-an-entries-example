class PagesController < ApplicationController
  def home
    @accounts = Account.order(updated_at: :asc).last(10)
    @entries = Entry.order(date: :desc).first(10)
  end
end
