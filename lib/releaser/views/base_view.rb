module Releaser
  class BaseView

    BASE_TEMPLATES_PATH = 'lib/releaser/templates'

    def template_string!(path)
      File.read "#{Releaser.root}/#{BASE_TEMPLATES_PATH}/#{path}"
    end

  end
end
