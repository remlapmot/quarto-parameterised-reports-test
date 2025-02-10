uv python install 3.13 --preview
uv venv --python 3.13

source .venv/bin/activate

# For nbstata
# In Stata: python set exec ~/.local/bin/python3, perm
uv pip install nbstata jupyterlab_stata_highlight2
# Not used: julia --project=@quarto -e 'import Pkg; Pkg.add("QuartoNotebookRunner")'
# Install IJulia
# https://github.com/JuliaLang/IJulia.jl
