Prototypable.Item = DS.Model.extend(
  name: DS.attr('string', defaultValue: '')
  description: DS.attr('string', defaultValue: '')
  instructions: DS.attr('string', defaultValue: '')
  createdAt: DS.attr('date')
  search: (query) ->
    @.find()
)