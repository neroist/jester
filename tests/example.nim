import jesterfork, asyncdispatch, htmlgen

routes:
  get "/":
    resp h1("Hello world")

runForever()
