define ["backbone", "models/inbox"], (Backbone, InboxModel) ->
  class Inboxes extends Backbone.Collection
    model: InboxModel
    url: "/api/inboxes"