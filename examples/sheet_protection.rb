#!/usr/bin/env ruby -w -s
$LOAD_PATH.unshift "#{File.dirname(__FILE__)}/../lib"
require 'axlsx'

p = Axlsx::Package.new
p.workbook.add_worksheet(name: 'Open Office') { |ws| ws.sheet_protection.password = 'fish' }
p.serialize 'sheet_protection.xlsx'
