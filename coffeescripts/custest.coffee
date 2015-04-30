class CusTest
  constructor: ->
    @cases = []
  addCase: (c) ->
    @cases.push c
  test: ->
    YUI
      logInclude:
        TestRunner: true
    .use 'test', 'test-console', (y) =>
      YUITest.TestRunner.add new YUITest.TestCase c for c in @cases
      new y.Test.Console
        newestOnTop: false
        filters:
          info: false
          pass: true
          fail: true
      .render '#log'
      YUITest.TestRunner.run()
      return
window.CusTest = CusTest