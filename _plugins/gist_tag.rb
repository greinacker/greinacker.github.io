# Lighweight version of jekyll-gist plugin, which does not attempt to download the raw
# code for the <noscript> version, but instead just shows a link to the gist.

# frozen_string_literal: true

require "cgi"

module Jekyll
  module Gist
    class GistTag < Liquid::Tag

      def render(context)
        @encoding = context.registers[:site].config["encoding"] || "utf-8"
        @settings = context.registers[:site].config["gist"]
        if (tag_contents = determine_arguments(@markup.strip))
          gist_id  = tag_contents[0]
          filename = tag_contents[1]
          gist_id  = context[gist_id]  if context.key?(gist_id)
          filename = context[filename] if context.key?(filename)

          noscript_tag = gist_noscript_tag(gist_id, filename)
          script_tag   = gist_script_tag(gist_id, filename)

          "#{noscript_tag}#{script_tag}"
        else
          raise ArgumentError, <<~ERROR
            Syntax error in tag 'gist' while parsing the following markup:

              '{% #{raw.strip} %}'

            Valid syntax:
              {% gist user/1234567 %}
              {% gist user/1234567 foo.js %}
              {% gist 28949e1d5ee2273f9fd3 %}
              {% gist 28949e1d5ee2273f9fd3 best.md %}

          ERROR
        end
      end

      private

      def determine_arguments(input)
        matched = input.match(%r!\A([\S]+|.*(?=\/).+)\s?(\S*)\Z!)
        [matched[1].strip, matched[2].strip] if matched && matched.length >= 3
      end

      def gist_script_tag(gist_id, filename = nil)
        url = "https://gist.github.com/#{gist_id}.js"
        url = "#{url}?file=#{filename}" unless filename.to_s.empty?

        "<script src=\"#{url}\"> </script>"
      end

      def gist_noscript_tag(gist_id, filename = nil)
        return if @settings && @settings["noscript"] == false

        # https://gist.github.com/0a4f2b0a64b7c5b13a48#file-new_node-py
        url = "https://gist.github.com/#{gist_id}"
        if !filename.to_s.empty?
          url += "\#file-#{CGI.escape(filename).gsub('%2F', '-').gsub('.', '-')}"
        end
        link = "<a href='#{url}'>#{url}</a>"

        "<noscript>#{link}</noscript>"
      end

    end
  end
end

Liquid::Template.register_tag("gist", Jekyll::Gist::GistTag)
