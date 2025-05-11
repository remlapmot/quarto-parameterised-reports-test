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

quarto render exercise-r-3.qmd -o exercise-r-3-questions.html
quarto render exercise-r-3.qmd -P hide_answers:false -o exercise-r-3-solutions.html
