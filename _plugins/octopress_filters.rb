module OctopressLiquidFilters
  def cdata_escape(input)
    input.gsub(/<!\[CDATA\[/, '&lt;![CDATA[').gsub(/\]\]>/, ']]&gt;')
  end
end
Liquid::Template.register_filter OctopressLiquidFilters

