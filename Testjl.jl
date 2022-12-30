module Testjl

import DelimitedFiles

if Base.source_path() !== nothing
	const dir = first(splitdir(first(splitdir(Base.source_path()))))
end

function julia_main()::Cint
    if length(ARGS) == 0
            run()
        elseif length(ARGS) == 1
            run(ARGS[1])
        else
            @warn("Command line error! Only one argument or no arguments need to be specified!")
            run(getcasename())
            return 0
        end
        return 0
    end
end

end # module