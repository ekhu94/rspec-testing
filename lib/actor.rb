class Actor
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def start_act
    "Your father's dead."
  end

  def fall_off_cliff
    'Noooo!'
  end

  def end_act
    'Deborah! Where are the redvines I requested in my rider?!'
  end

  def ready?
    sleep(2)
    true
  end

  def oscar_winner?
    false
  end
end