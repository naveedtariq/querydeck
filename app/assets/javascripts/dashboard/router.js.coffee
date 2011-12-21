
class @Router extends Backbone.Router
  routes:
    '': 'index'
    'projects/:id': 'project'
    'projects/:project_id/contacts': 'contacts'
    'projects/:project_id/messages': 'messages'
    '*path': 'error'
    
  initialize: (@options) ->
    console.log 'initialize', @options
    @projects = @options.projects
    @projects.url = "/projects"
    
  index: ->
    console.log 'index'
    new DashboardView(el: '#dashboard', collection: @projects)
    
  project: (id) ->
    console.log 'project', id
    
  contacts: (project_id) ->
    console.log 'contacts', project_id
    
  messages: (project_id) ->
    console.log 'messages', project_id
    
  error: (path) ->
    console.log 'error', path
    