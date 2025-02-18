quarto::quarto_render("discussion-12026-reply.qmd")

rmarkdown::render("exercise.Rmd",
  output_file = "exercise-questions",
  params = list(solutions = FALSE, title = "Example exercise: Questions")
)

rmarkdown::render("exercise.Rmd",
  output_file = "exercise-solutions"
)
