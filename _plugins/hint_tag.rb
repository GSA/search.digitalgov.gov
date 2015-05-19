module Jekyll
  class HintTag < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      super
      @keys = markup.split('.').map(&:strip).freeze
    end

    def render(context)
      hints = context.registers[:site].data['hints'].freeze
      @keys.inject(hints) { |h, key| h[key] }
    end
  end
end

Liquid::Template.register_tag('hint', Jekyll::HintTag)
