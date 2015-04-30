# yui-test-coffee-wrap
use coffeescript to add yui test case

```coffeescript

    ct = new CusTest()
    ct.addCase
      name: 'example 1'
      test1: ->
        YUITest.Assert.areEqual 27, 27, '27 = 27 ?'
      test2: ->
        YUITest.Assert.areEqual 27, 22, '27 = 22 ?'
    ct.addCase
      name: 'example 2'
      testOne: ->
        YUITest.Assert.areEqual 2, 3, '2 = 3 ?'
      testTwo: ->
        YUITest.Assert.areEqual 2, 2, '2 = 2 ?'
    ct.test()

```


pressing [i|p|f|s] will show/hide [info|pass|fail|status] data.
