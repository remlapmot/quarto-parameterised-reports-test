R -e 'source("render.R")'

quarto render exercise-r.qmd -o exercise-r-questions.html
quarto render exercise-r.qmd -P hide_answers:FALSE -o exercise-r-solutions.html

quarto render exercise-python.qmd -o exercise-python-questions.html
quarto render exercise-python.qmd -P hide_answers:False -o exercise-python-solutions.html

HIDE_ANSWERS_STATA=1 quarto render exercise-stata.qmd -o exercise-stata-questions.html
HIDE_ANSWERS_STATA=0 quarto render exercise-stata.qmd -o exercise-stata-solutions.html

quarto render exercise-julia.qmd -P hide_answers:true -o exercise-julia-questions.html
quarto render exercise-julia.qmd -P hide_answers:false -o exercise-julia-solutions.html

quarto render exercise-r-2.qmd -o exercise-r-2-questions.html
quarto render exercise-r-2.qmd -P hide_answers:false -o exercise-r-2-solutions.html

quarto render exercise-python-meta.qmd -P solutions:false -o exercise-python-meta-questions.html
quarto render exercise-python-meta.qmd -o exercise-python-meta-solutions.html

SOLUTIONS_STATA=false quarto render exercise-stata-meta.qmd -o exercise-stata-meta-questions.html
SOLUTIONS_STATA=true quarto render exercise-stata-meta.qmd -o exercise-stata-meta-solutions.html

quarto render exercise-julia-meta.qmd -P solutions:false -o exercise-julia-meta-questions.html
quarto render exercise-julia-meta.qmd -P solutions:true -o exercise-julia-meta-solutions.html

# profiles
quarto render --profile python-questions -o exercise-python-meta-profile-questions.html
quarto render --profile python-solutions -o exercise-python-meta-profile-solutions.html
