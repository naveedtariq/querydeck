
$ ->
  ProjectItemView::template = _.template($('#project-item-template').html())
  
class ProjectItemView extends Backbone.View
  tagName: 'div'
  
  className: 'project-item'
    
  events:
    'click': 'showProject'
    
  initialize: (@options) ->
    @parentView = @options.parentView
    @model.bind 'remove', => @remove()
    @render()
    
  render: ->
    $(@el).html(@template(model: @model))
    $(@parentView.el).append(@el)
    
  showProject: ->
    router.navigate("projects/#{@model.id}", true)
    
class @ProjectsView extends Backbone.View
  initialize: (@options) ->
    @parentView = @options.parentView
    @render()
    @watchCollection()
    
  render: ->
    @collection.each @addProjectItem
    
  watchCollection: ->
    @collection.bind 'add', @addProjectItem
    @collection.bind 'reset', (projects) =>
      projects.each @addProjectItem
      
  addProjectItem: (project) =>
    new ProjectItemView(model: project, parentView: @)
    