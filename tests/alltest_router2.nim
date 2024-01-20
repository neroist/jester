import re

import jesterfork

router external:
  get "/simple":
    resp "Works!"

  get "/params/@foo":
    resp @"foo"

  get re"/\(foobar\)/(.+)/":
    resp request.matches[0]