# vim: ts=2 sts=2 sw=2 et sta
#
# Cookbook Name:: timezone
# Provider:: default
#
# Author:: Kirill Kouznetsov <agon.smith@gmail.com>
#
# Copyright 2015, Kirill Kouznetsov.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

use_inline_resources

provides :timezone if defined? provides

action :set do
  os_version = node['platform_version'].split('.')[0].to_i

  package 'tzdata'

  if node['platform_family'] == 'rhel' &&
     os_version < 7
    # Old version of RHEL & CentOS
    tz_f = file '/etc/sysconfig/clock' do
      owner 'root'
      group 'root'
      mode '0644'
      action :nothing
      content %(ZONE="#{new_resource.timezone}"\n)
    end

    tz_f.run_action(:create)

    reconfigure = execute 'tzdata-update' do
      command '/usr/sbin/tzdata-update'
      action :nothing
      only_if { ::File.executable?('/usr/sbin/tzdata-update') }
    end

    reconfigure.run_action(:run) if tz_f.updated_by_last_action?

  elsif %w[centos rhel fedora redhat].include?(node['platform']) ||
        (node['platform'] == 'ubuntu' && os_version >= 16) ||
        (node['platform'] == 'debian' && os_version >= 8)
    # Modern Fedora, CentOS, RHEL, Ubuntu & Debian
    cmd_set_tz = '/usr/bin/timedatectl'
    cmd_set_tz += ' '
    cmd_set_tz += '--no-ask-password'
    cmd_set_tz += ' '
    cmd_set_tz += "set-timezone #{new_resource.timezone}"

    cmd_check_if_set = '/usr/bin/timedatectl status'
    cmd_check_if_set += " | /usr/bin/awk '/Time.*zone/{print}'"
    cmd_check_if_set += " | grep -q #{new_resource.timezone}"

    tz_f = execute cmd_set_tz do
      action :nothing
      not_if cmd_check_if_set
    end

    tz_f.run_action(:run)
  elsif %w[debian ubuntu].include? node['platform']
    tz_f = file '/etc/timezone' do
      action :nothing
      owner 'root'
      group 'root'
      mode '0644'
      content "#{new_resource.timezone}\n"
    end

    tz_f.run_action(:create)

    reconfigure = bash 'dpkg-reconfigure tzdata' do
      user 'root'
      code '/usr/sbin/dpkg-reconfigure -f noninteractive tzdata'
      action :nothing
    end

    reconfigure.run_action(:run) if tz_f.updated_by_last_action?
  end
end

# vim: ts=2 sts=2 sw=2 sta et
