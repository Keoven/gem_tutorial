class GemTutorial::Gem < ActiveRecord::Base
  def self.table_name_prefix
    'gem_tutorial_'
  end
  # This is a mini-tutorial for rdoc
  # * listitem1
  # - listitem2
  # 1. listitem3
  # [listitem4] listitem4
  # listitem5:: listitem5
  #
  # = Heading1
  # == Heading2
  #
  # This sentence has <em>emphasis</em> on <b>bold</b>
  # characters written in <tt>monospace</tt>.
  #
  # You can also use _underscore_, *star* and +plus+
  #
  # \_But_ \*you* \+can+ \<em>always</em>
  # \<b>cancel<\b> \<tt>this</tt>
  #
  # This[http://www.google.com] is a link to http://www.google.com
  #
  #--
  # Internal Comment
  #++
  # Resume Documentation
  # \:include:_filename_
  # \:title:_text_
  # \:main:_name_
  def rdoc_tutorial(parameter1, parameter2)
    parameter3, parameter4 = parameter1, parameter2
    yield parameter3, paramter4
  end

  def documentation_modifier # :yields: parameter1, parameter2
    value1, value2 = 1, 2
    yield value1, value2
  end
end

module NotDocumented # :nodoc:
  class Documented
  end
end

module CompletelyInvisible # :nodoc: all
  class Ninja
  end
end
