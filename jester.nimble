# Package

version       = "1.0.0" # Be sure to update jester.jesterVer too!
author        = "Dominik Picheta"
description   = "A sinatra-like web framework for Nim."
license       = "MIT"

skipFiles = @["todo.markdown"]
skipDirs = @["tests"]

# Deps

requires "nim >= 1.6.18"
requires "checksums >= 0.1.0"
requires "httpx >= 0.3.7"

when not defined(windows):
  requires "https://github.com/ThomasTJdev/httpbeast_fork >= 1.0.0"

task test, "Runs the test suite.":
  when NimMajor >= 2:
    # Due to tests/nim-in-action-code/Chapter7
    exec "nimble install -y db_connector@0.1.0"
  exec "nimble install -y asynctools@#0e6bdc3ed5bae8c7cc9"
  exec "nim c -r tests/tester"
