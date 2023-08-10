#!/usr/bin/env ruby
# frozen_string_literal: false

require 'set'

$LOAD_PATH << './lib'

require 'opt'
require 'token'
require 'operator_stack'
require 'shunt_expression'
require 'shunt_condition'
require 'gensym'
require 'for_data'
require 'static_data'
require 'translate_linux_amd64'

opts, args = Opts.options(ARGV, { '--input' => '=', '--output' => '=', '--debug' => '!' })

unless opts.input
  puts "No --input file supplied"
  exit 1
end

unless File.exist?(opts.input)
  puts "Input file #{opts.input} does not exist"
  exit 1
end

t = TranslateLinuxAmd64.new(opts.debug)

File.open(opts.input, 'r').each do |line|
  t.read(line)
end

fh = opts.output ? File.open(opts.output, 'w') : STDOUT

t.output(fh)
