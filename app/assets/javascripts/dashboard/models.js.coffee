
class @Contact extends Backbone.Model
  idAttribute: '_id'
  
  initialize: (attributes) ->
    
class @ContactCollection extends Backbone.Collection
  model: Contact
  
  initialize: (models, options) ->
  
class @Message extends Backbone.Model
  idAttribute: '_id'
  
  initialize: (attributes) ->
    
class @MessageCollection extends Backbone.Collection
  model: Message
  
  initialize: (models, options) ->
    
class @Project extends Backbone.Model
  idAttribute: '_id'
  
  initialize: (attributes) ->
    @contacts = new ContactCollection([])
    @contacts.url = "/projects/#{@id}/contacts"
    @messages = new MessageCollection([])
    @messages.url = "/projects/#{@id}/messages"
    
class @ProjectCollection extends Backbone.Collection
  model: Project
  
  initialize: (models, options) ->
    