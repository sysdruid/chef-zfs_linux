#
# Cookbook Name:: zfs_linux
# Resource:: snapshot
#
# Copyright 2015 Biola University
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

actions :create, :prune, :purge
default_action :create
attribute :name, :kind_of => String, :name_attribute => true
attribute :append_timestamp, :kind_of => [TrueClass, FalseClass], :default => true
attribute :dataset, :kind_of => [String, NilClass], :default => nil
attribute :prefix, :kind_of => [String, NilClass], :default => 'zfs-chef-snap'
attribute :snaps_to_retain, :kind_of => [Fixnum, String], :default => 31

attr_accessor :snaps
