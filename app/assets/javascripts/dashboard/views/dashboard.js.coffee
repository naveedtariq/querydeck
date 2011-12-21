
class @DashboardView extends Backbone.View
  initialize: (@options) ->
    @render()
    
  render: ->
    @projectsView = new ProjectsView(el: '.projects', collection: @collection, parentView: @)
    