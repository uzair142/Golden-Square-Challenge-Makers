class GrammarStats
  def initialize
    @passed = 0
    @total_tests = 0
  end

  def check(text) 
    @total_tests += 1
    if text.ord.chr =~ /[A-Z]/
      @passed +=1
      true
    else
      false
    end
  end

  def percentage_good
    (@passed.to_f/@total_tests)*100
  end
end
