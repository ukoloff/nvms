###
No command line parameters
###

wsh.Stderr.Writeline """
  #{PACKAGE.mingzi} v#{PACKAGE.version}: #{PACKAGE.description}

  #{argv0.n()}: Nano npx

  Usage: #{argv0.n()} command [parameter(s)]

  See: #{PACKAGE.homepage}
"""
