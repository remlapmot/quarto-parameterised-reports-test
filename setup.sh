# required so nbstata can find pystata package
export PYTHONPATH=/Applications/Stata/utilities

uv python install 3.13 --preview
uv venv --python 3.13

source .venv/bin/activate

# For nbstata example
# In Stata: python set exec ~/.local/bin/python3, perm
uv pip install jupyterlab nbstata jupyterlab_stata_highlight2 papermill python-dotenv jupyter-cache

# For Julia example
# Not used: julia --project=@quarto -e 'import Pkg; Pkg.add("QuartoNotebookRunner")'
# Install IJulia
# https://github.com/JuliaLang/IJulia.jl

./render.sh

deactivate

# Alternative code to define as Python project (with pyproject.toml)
export PYTHONPATH=/Applications/Stata/utilities
uv init
uv add jupyterlab nbstata jupyterlab_stata_highlight2 papermill python-dotenv jupyter-cache pyyaml
source .venv/bin/activate
python -m nbstata.install --sys-prefix
# restore from pyproject.toml and uv.lock with
# uv sync
./render.sh
deactivate
