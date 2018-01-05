#!/usr/bin/env ruby

require "fileutils"

KB_CONFIG = "/Volumes/KINESIS KB/active/qwerty.txt"
LOCAL_CONFIG = File.expand_path("active/qwerty.txt", __dir__)

Dir.chdir(__dir__) do
  FileUtils.mkdir("active") if !Dir.exist?("active")

  FileUtils.copy_file(KB_CONFIG, LOCAL_CONFIG)
end
