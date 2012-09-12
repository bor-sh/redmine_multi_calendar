# Redmine Multicalendar plugin - multiple, customizable calendars
# Copyright (C) 2011  KSF Technologies http://ksfltd.com
# Authors: Anna Yalagina, Eugene Hutorny
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; version 2
# of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA

if Rails::VERSION::MAJOR >= 3
  RedmineApp::Application.routes.draw do
    match 'calendars/:id/settings', :to => 'caledar#settings', :via => [:get, :post] #:controller => 'calendar', :action => 'settings'
    match 'calendars/:id/settings/:tab', :to => 'calendar#settings', :via => [:get, :post] #:controller => 'calendar', :action => 'settings'
    match 'calendars/:id/view', :to => 'calendar_vacation#show', :via => [:get, :post] #:controller => 'calendar_vacation', :action => 'show'
    match 'calendars/:id/assign_calendar', :to => 'assign_calendar#new', :via => [:get, :post] #:controller => 'assign_calendar', :action => 'new'
    match 'calendars/:id/settings/:tab/:date_year_for_list_holidays', :to => 'calendar#settings', :via => [:get, :post] #:controller => 'calendar', :action => 'settings'
    match 'calendars/:id/settings/:tab/:year', :to => 'calendar#settings', :via => [:get, :post] #:controller => 'calendar', :action => 'settings'
    match 'issues/calendar', :to => 'calendars#show', :via => [:get, :post] #:controller => 'calendars', :action => 'show'
    match 'calendar', :to => 'calendar#index', :via => [:get, :post] #:controller => 'calendar', :action => 'index'
    match 'calendar/new', :to => 'calendar#new', :via => [:get, :post] #:controller => 'calendar', :action => 'new'
    match 'calendar/create', :to => 'calendar#create', :via => [:get, :post] #:controller => 'calendar', :action => 'create'
    match 'calendar/show', :to => 'calendar#show', :via => [:get, :post] #:controller => 'calendar', :action => 'show'
    match 'calendar/assign', :to => 'assign_calendar#add_calendar', :via => [:get, :post] #:controller => 'assign_calendar', :action => 'add_calendar'
    match 'calendar/assign/create', :to => 'assign_calendar#create', :via => [:get, :post] #:controller => 'assign_calendar', :action => 'create'
    match 'calendar/assign/autocomplete', :to => 'assign_calendar#autocomplete_for_assign_calendar', :via => [:get, :post] #:controller => 'assign_calendar', :action => 'autocomplete_for_assign_calendar'
    match 'calendar/assign/destroy', :to => 'assign_calendar#destroy', :via => [:get, :post] #:controller => 'assign_calendar', :action => 'destroy'
    match 'calendar/assign/add', :to => 'assign_calendar#add_calendar', :via => [:get, :post] #:controller => 'assign_calendar', :action => 'add_calendar' 
    match 'calendar/assign/destroy_cal', :to => 'assign_calendar#destroy_calendar', :via => [:get, :post] #:controller => 'assign_calendar', :action => 'destroy_calendar'
    match 'calendar/destroy', :to => 'calendar#destroy', :via => [:get, :post] #:controller => 'calendar', :action => 'destroy'
    match 'calendar/update', :to => 'calendar#update', :via => [:get, :post] #:controller => 'calendar', :action => 'update'
    match 'calendar/settings', :to => 'calendar#settings', :via => [:get, :post] #:controller => 'calendar', :action => 'settings'
    match 'calendar/edit', :to => 'calendar#edit', :via => [:get, :post] #:controller => 'calendar', :action => 'edit'
    match 'calendar/duplicate', :to => 'calendar#edit', :via => [:get, :post] #:controller => 'calendar', :action => 'edit'
    match 'calendar/vacation', :to => 'calendar_vacation#show', :via => [:get, :post] #:controller => 'calendar_vacation', :action => 'show'
    match 'calendar/vacation/list', :to => 'calendar_vacation#list_holidays', :via => [:get, :post] #:controller => 'calendar_vacation', :action => 'list_holidays'
    match 'calendar/vacation/create', :to => 'calendar_vacation#create', :via => [:get, :post] #:controller => 'calendar_vacation', :action => 'create'
    match 'calendar/vacation/update', :to => 'calendar_vacation#update', :via => [:get, :post] #:controller => 'calendar_vacation', :action => 'update'
    match 'calendar/vacation/destroy', :to => 'calendar_vacation#destroy', :via => [:get, :post] #:controller => 'calendar_vacation', :action => 'destroy'
    match 'calendar/vacation/duplicate', :to => 'calendar_vacation#duplicate', :via => [:get, :post] #:controller => 'calendar_vacation', :action => 'duplicate'
    match 'calendar/weekly', :to => 'pattern_weeklies#index', :via => [:get, :post] #:controller => 'pattern_weeklies', :action => 'index' 
    match 'calendar/weekly/create', :to => 'pattern_weeklies#create', :via => [:get, :post] #:controller => 'pattern_weeklies', :action => 'create' 
    match 'calendar/weekly/edit', :to => 'pattern_weeklies#edit', :via => [:get, :post] #:controller => 'pattern_weeklies', :action => 'edit' 
    match 'calendar/weekly/destroy', :to => 'pattern_weeklies#destroy', :via => [:get, :post] #:controller => 'pattern_weeklies', :action => 'destroy' 
    match 'calendar/week_days/edit', :to => 'week_days#edit', :via => [:get, :post] #:controller => 'week_days', :action => 'edit'
    match 'calendar/week_days/update', :to => 'week_days#update', :via => [:get, :post] #:controller => 'week_days', :action => 'update'
  end
else
  ActionController::Routing::Routes.draw do |map|
    map.connect 'calendars/:id/settings', :controller => 'calendar', :action => 'settings'
    map.connect 'calendars/:id/settings/:tab', :controller => 'calendar', :action => 'settings'
  
   # map.connect 'calendar/:id/show', :controller => 'calendar_vacation', :action => 'show'
    map.connect 'calendars/:id/view', :controller => 'calendar_vacation', :action => 'show'
    #map.connect 'calendars/:id/holidays', :controller => 'calendar_vacation', :action => 'list_holidays'
    map.connect 'calendars/:id/assign_calendar', :controller => 'assign_calendar', :action => 'new'
    map.connect 'calendars/:id/settings/:tab/:date_year_for_list_holidays', :controller => 'calendar', :action => 'settings'
   # map.connect 'calendars/settings/:tab/:id/:date_year_for_list_holidays', :controller => 'calendar', :action => 'settings'
   # map.connect 'calendars/settings/:tab/:id', :controller => 'calendar', :action => 'settings'
    map.connect 'calendars/:id/settings/:tab/:year', :controller => 'calendar', :action => 'settings'
   # map.connect 'calendars/settings/:tab/:id/:year', :controller => 'calendar', :action => 'settings'
  
    map.connect 'issues/calendar', :controller => 'calendars', :action => 'show'
    map.connect 'calendar', :controller => 'calendar', :action => 'index'
    map.connect 'calendar/new', :controller => 'calendar', :action => 'new'
    map.connect 'calendar/create', :controller => 'calendar', :action => 'create'
    map.connect 'calendar/show', :controller => 'calendar', :action => 'show'
    map.connect 'calendar/assign', :controller => 'assign_calendar', :action => 'add_calendar'
    map.connect 'calendar/assign/create', :controller => 'assign_calendar', :action => 'create'
    map.connect 'calendar/assign/autocomplete', :controller => 'assign_calendar', :action => 'autocomplete_for_assign_calendar'
    map.connect 'calendar/assign/destroy', :controller => 'assign_calendar', :action => 'destroy'
    map.connect 'calendar/assign/add', :controller => 'assign_calendar', :action => 'add_calendar' 
    map.connect 'calendar/assign/destroy_cal', :controller => 'assign_calendar', :action => 'destroy_calendar'
    map.connect 'calendar/destroy', :controller => 'calendar', :action => 'destroy'
    map.connect 'calendar/update', :controller => 'calendar', :action => 'update'
    map.connect 'calendar/settings', :controller => 'calendar', :action => 'settings'
    map.connect 'calendar/edit', :controller => 'calendar', :action => 'edit'
    map.connect 'calendar/duplicate', :controller => 'calendar', :action => 'edit'
    map.connect 'calendar/vacation', :controller => 'calendar_vacation', :action => 'show'
    map.connect 'calendar/vacation/list', :controller => 'calendar_vacation', :action => 'list_holidays'
    map.connect 'calendar/vacation/create', :controller => 'calendar_vacation', :action => 'create'
    map.connect 'calendar/vacation/update', :controller => 'calendar_vacation', :action => 'update'
    map.connect 'calendar/vacation/destroy', :controller => 'calendar_vacation', :action => 'destroy'
    map.connect 'calendar/vacation/duplicate', :controller => 'calendar_vacation', :action => 'duplicate'
    map.connect 'calendar/weekly', :controller => 'pattern_weeklies', :action => 'index' 
    map.connect 'calendar/weekly/create', :controller => 'pattern_weeklies', :action => 'create' 
    map.connect 'calendar/weekly/edit', :controller => 'pattern_weeklies', :action => 'edit' 
    map.connect 'calendar/weekly/destroy', :controller => 'pattern_weeklies', :action => 'destroy' 
    map.connect 'calendar/week_days/edit', :controller => 'week_days', :action => 'edit'
    map.connect 'calendar/week_days/update', :controller => 'week_days', :action => 'update'
  end
end

