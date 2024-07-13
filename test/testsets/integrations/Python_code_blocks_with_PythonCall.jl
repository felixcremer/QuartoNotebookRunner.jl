include("../../utilities/prelude.jl")

test_example(
    joinpath(@__DIR__, "../../examples/integrations/Python_code_blocks_with_PythonCall.qmd"),
) do json
    cells = json["cells"]

    #@test occursin("PyCall must be imported", cells[3]["outputs"][1]["traceback"][1])
    println.(cells[8]["outputs"][1]["traceback"])
    @test cells[8]["outputs"][1]["data"]["text/plain"] == "5"

    # plot
    #@test !isempty(cells[11]["outputs"][1]["data"]["image/png"])
end
