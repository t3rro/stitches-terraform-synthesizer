# frozen_string_literal: true

lib = File.expand_path(%(lib), __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative %(./lib/stitches/synthesizer/terraform/version)

Gem::Specification.new do |spec|
  spec.name                  = %(stitches-terraform-synthesizer)
  spec.version               = Stitches::Synthesizer::Terraform::VERSION
  spec.authors               = [%(Luis De Siqueira)]
  spec.email                 = [%()]
  spec.description           = %(create terraform infrastructure)
  spec.summary               = %(create terraform infrastructure)
  spec.homepage              = %(https://github.com/luisfelipemourapereira/#{spec.name})
  spec.license               = %(IPA)
  spec.files                 = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  spec.require_paths         = [%(lib)]
  spec.required_ruby_version = %(>= #{`cat .ruby-version`})

  spec.metadata[%(rubygems_mfa_required)] = %(true)
end
