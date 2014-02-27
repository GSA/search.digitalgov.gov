module Jekyll
  class ExternalLinkTag < Liquid::Tag

    def render(context)
      '&nbsp;<i class="icon-external-link"><span>(External link)</span></i>'
    end
  end
end

Liquid::Template.register_tag('external_link', Jekyll::ExternalLinkTag)
