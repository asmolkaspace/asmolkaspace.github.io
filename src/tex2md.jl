DISS_PATH_LX = joinpath(@__DIR__, "..", "..", "diss")

function tex2md(file::String, out::String)
    lines = readlines(file)
    fid = open(joinpath(@__DIR__, out), "w+")
   

    for line in lines

        if length(line) == 0
            write(fid, "\n")
            continue;
        end
    
        

        if line[1] == '%'
            write(fid, "$(_comment(line))\n")
        elseif contains(line, "\\section")
            write(fid, "$(_section(line))\n")
        elseif contains(line, "\\subsection")
            write(fid, "$(_subsection(line))\n")
        end




    end


    close(fid)
    return lines
end


function _comment(line::String)
    return "$(replace(line, "%" => "[//]:_ # (")))"
end

function _section(line::String)
    return replace(line, "\\section{" => "## ")[1:end-1]
end
function _subsection(line::String)
    return replace(line, "\\subsection{" => "## ")[1:end-1]
end
