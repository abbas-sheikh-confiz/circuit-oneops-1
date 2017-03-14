#
# Cookbook Name:: hadoop-yarn-v1
# Recipe:: datanode_stop
#
# Copyright 2016, @WalmartLabs
#
# All rights reserved - Do Not Redistribute
#

# stop datanode
ruby_block "Stop hadoop-datanode service" do
    block do
        Chef::Resource::RubyBlock.send(:include, Chef::Mixin::ShellOut)
        shell_out!("service hadoop-datanode stop ",
            :live_stream => Chef::Log::logger)
    end
end
