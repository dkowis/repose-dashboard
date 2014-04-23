class Dashing.BuildPipeline extends Dashing.Widget

  @accessor 'innerValue', Dashing.AnimatedValue
  @accessor 'outerValue', Dashing.AnimatedValue

  constructor: ->
    super
    @observe 'innerValue', (value) ->
      $(@node).find(".meter").val(value).trigger('change')
    @observe 'outerValue', (value) ->
      $(@node).find(".meter").val(value).trigger('change')

  ready: ->
    meter = $(@node).find(".meter")
    # set their background color and foreground color...
    meter.attr("data-bgcolor", meter.css("background-color"))
    meter.attr("data-fgcolor", meter.css("color"))
    meter.knob()
