class WelcomeController < ApplicationController
  def home
  end

  def design
    @spaces = Space.all
  end

  def coder
    @spaces = Space.all
  end

  def business
    @spaces = Space.all
  end

  def art
    @spaces = Space.all
  end

  def share
    @spaces = Space.all
  end

  def other
    @spaces = Space.all
  end

  def establish

  end

  def lease

  end

  def event

  end

  def about

  end

end
