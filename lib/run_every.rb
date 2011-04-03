#!/usr/bin/env ruby

# file: run_every.rb

require 'xthreads'

class RunEvery

  def initialize(opt={}, &blk)
    if opt[:minutes] then
      interval = opt[:minutes] * 60
    elsif opt[:seconds] then
      interval = opt[:seconds]
    end
    start_timer(interval, &blk)    
  end

  class TimeUnit  
    def initialize(interval)
      @interval = interval
    end

    def minutes
      puts 'mins'
      start_timer(@interval * 60, &blk)
    end
    
    def seconds(&blk)
      puts 'seconds'
      start_timer(@interval, &blk)
    end

    private
    
    def start_timer(interval, &blk)
      XThreads.new.create_loop('every', interval: interval, &blk).start
    end
  end

  self.instance_eval do
    def one()        TimeUnit.new 1  end
    def two()        TimeUnit.new 2  end
    def three()      TimeUnit.new 3  end
    def four()       TimeUnit.new 4  end
    def five()       TimeUnit.new 5  end
    def ten()        TimeUnit.new 10  end
    def fifteen()    TimeUnit.new 15  end
    def twenty()     TimeUnit.new 20  end
    def twentyfive() TimeUnit.new 20  end
    def thirty()     TimeUnit.new 30  end
    def forty()      TimeUnit.new 40  end
    def fifty()      TimeUnit.new 50  end
  end

  private

  def start_timer(interval, &blk)
    XThreads.new.create_loop('every', interval: interval, &blk).start
  end

end
