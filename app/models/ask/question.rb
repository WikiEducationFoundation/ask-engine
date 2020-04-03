module Ask
  class Question < ApplicationRecord
    def self.markdown_renderer
      @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    end

    def self.render_markdown(content)
      markdown_renderer.render(content)
    end

    def html_content
      Question.render_markdown(content)
    end
  end
end
