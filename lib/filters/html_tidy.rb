class HtmlTidy < Nanoc::Filter
  identifier :html_tidy
  requires 'open3'

  def run(content, params = {})
    out, _err, _status = Open3.capture3('tidy --quiet yes --indent auto --indent-spaces 2 --wrap 0 --drop-empty-elements no', stdin_data: content)
    out
  end
end