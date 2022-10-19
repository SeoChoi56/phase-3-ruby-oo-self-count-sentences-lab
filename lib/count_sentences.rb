require 'pry'

class String

  def sentence?
    return self[-1] == "." ? true : false
  end

  def question?
    return self[-1] == "?" ? true : false
  end

  def exclamation?
    return self[-1] == "!" ? true : false
  end

  def count_sentences
    splitArray = self.split(/[\!\?\.]/)
    if splitArray.include?("")
      splitArray.delete("")
    end
    return splitArray.length
  end
end