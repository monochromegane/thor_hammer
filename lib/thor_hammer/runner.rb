module ThorHammer
  class Runner

    def self.start(thor, subcommand, args = "")
      output = capture(:stdout, :stderr) do
        thor.classify.constantize.start([subcommand] + args.split(","))
      end
    end

    private

    def self.capture(*streams)
      streams.map!{|stream|stream.to_s}
      begin
        result = StringIO.new
        streams.each{|stream|eval("$#{stream} = result")}
        yield
      ensure
        streams.each{|stream|eval("$#{stream} = #{stream.upcase}")}
      end
      result.string
    end

  end
end
