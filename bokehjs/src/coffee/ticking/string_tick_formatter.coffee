_ = require "underscore"
HasProperties = require "../common/has_properties"

class StringTickFormatter extends HasProperties
  type: 'StringTickFormatter'

  initialize: (attrs, options) ->
    super(attrs, options)
    
    @register_property('labels_js',
        () -> @get('labels'))
    @add_dependencies('labels_js', this, ['labels'])

  format: () ->

    labels = @get('labels_js')
    
    return labels

module.exports =
  Model: StringTickFormatter
