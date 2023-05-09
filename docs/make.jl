using Pkg; Pkg.activate(joinpath(@__DIR__, ".."))
using Documenter

PAGES = [
    "Home" => "index.md",
    "Dissertation" => "dissertation/main.md",
]

makedocs(
    sitename    = "asmolkaspace",
    format      = Documenter.HTML(
        prettyurls    = false, 
        collapselevel = 1, 
        disable_git   = true,
        footer        = "Alexander Smolka | [alexander.smolka@tum.de](mailto:alexander.smolka@tum.de) | 2023"),
    authors     = "Alexander Smolka",
    doctest     = true,
    clean       = true, 
    pages       = PAGES,
)
