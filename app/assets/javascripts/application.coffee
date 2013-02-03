#= require modernizr
#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require bootstrap
#= require_self
#= require store
#= require routes
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./templates
#= require_tree ./views

window.Prototypable = Ember.Application.create()

# csrf_token for rails
#$ ->
#  token = $('meta[name="csrf-token"]').attr('content')
#  $.ajaxPrefilter (options, originalOptions, xhr) ->
#    xhr.setRequestHeader('X-CSRF-Token', token)
