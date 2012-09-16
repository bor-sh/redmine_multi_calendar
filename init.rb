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

require 'redmine'

require 'multi_calendar_hooks'

ActionDispatch::Callbacks.to_prepare do
  require 'principal'
  require 'calendars_controller_patch'
  require 'application_helper_patch'
  require 'my_controller_patch'
  require 'users_controller_patch'
  require 'users_helper_patch'
  
  User.class_eval do
    has_one :assign_calendar,  :dependent => :destroy
  end
end

Redmine::Plugin.register :redmine_multi_calendar do
  name 'Redmine Multi Calendar plugin'
  author 'Yalagina Anna'
  description 'This is a plugin for Redmine'
  version '2.0.0'

  requires_redmine :version_or_higher => '2.0.0'

  menu :top_menu, 'calendar', { :controller => 'calendar', :action => 'index' },
  {
      :caption => :mc_calendars,
      :if => Proc.new { User.current.admin }
  }

end
