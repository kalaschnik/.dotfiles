# disable time check devtools::check(), since this often fails or takes too long
Sys.setenv('_R_CHECK_SYSTEM_CLOCK_' = 0)

# attach always devtools
if (interactive()) {
  suppressMessages(require(devtools))
}

# enables this: https://twitter.com/milesmcbain/status/1368520667239313412
options(vsc.str.max.level = 2)