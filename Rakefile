# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require "motion/project/template/ios"
require "bundler"
Bundler.require

Motion::Project::App.setup do |app|
  app.name = "RMQ Debug"
  app.identifier = "com.test.rmqdebug"
  app.short_version = "0.1.0"
  app.version = app.short_version

  app.sdk_version = "7.1"
  app.deployment_target = "7.0"

  app.icons = ["icon@2x.png", "icon-29@2x.png", "icon-40@2x.png", "icon-60@2x.png", "icon-76@2x.png", "icon-512@2x.png"]

  app.device_family = :ipad
  app.interface_orientations = [:portrait, :landscape_left, :landscape_right]

  app.files += Dir.glob(File.join(app.project_dir, "lib/**/*.rb"))

  # !!! root of issue
  app.detect_dependencies = false
end
