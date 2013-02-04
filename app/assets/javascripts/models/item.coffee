Prototypable.Item = DS.Model.extend(
  name: DS.attr('string', defaultValue: '')
  description: DS.attr('string', defaultValue: '')
  search: (query) ->
    @.find()
)