import jester

router external:
  get "/simple":
    resp "Works!"

  get "/params/@foo":
    resp @"foo"

  get re2"/\(foobar\)/(.+)/":
    resp request.captures[0]