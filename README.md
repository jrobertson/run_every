# Introducing the Run Every gem

    require 'run_every'



    RunEvery.four.seconds {puts 'hello'}

    #=> hello

    #=> hello

    #=> hello



    RunEvery.new(seconds: 4) {puts 'hi'}

    #=> hi

    #=> hi

    #=> hi



    #RunEvery.two.minutes {puts 'hello'}

The Run Every gem is a simple timer with a code block. The interval can be set in seconds or minutes either using method chaining or through a hash passed into initialize().
The chaining method intervals include: one, two, three, four, five, ten, fifteen, twenty, twentyfive, thirty, forty, fifty.

## Resources

* <a href="https://github.com/jrobertson/run_every">jrobertson/run_every - GitHub</a>[github.com]

*update: 3-Apr-2011 @ 7:41pm*

    a = '12'
    RunEvery.new(seconds: 6) do 
      if a == '12' then
        puts '..'
      elsif a == '1' then
        puts 'we have a winner'
        Thread.stop
      else
        puts 'nothing to see here'
      end
    end

    a = 1
    #=> we have a winner


2 things worth noting: 1) variable scope can extend to outside the block. 2) The thread can be stopped from within the block using Thread.stop

every gem ruby simple timer
