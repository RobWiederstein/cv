file <- glue::glue(
    "https://education.rstudio.com/blog/2020/02/",
    "instructor-certification-exams/infant_hiv.csv"
)
tvc <- readr::read_csv(
    file = file,
    na = "-",
    name_repair = ~ janitor::make_clean_names(.)
)
tvc_1 <-
    tvc |>
    tidyr::pivot_longer(
        -iso3,
        names_to = "year"
    ) |>
    tidyr::separate(
        year,
        into = c("year", "level"),
        sep = "_"
    ) |>
    dplyr::mutate(year = gsub("x", "", year) |> as.integer()) |>
    dplyr::mutate(value = gsub("%", "", value) |> as.numeric()) |>
	na.omit()
tvc_1 |>
	dplyr::filter(level == "est") |>
	dplyr::filter(iso3 %in% c("BRA", "BOL")) |>
	ggplot() +
	aes(year, value, group = iso3, color = iso3) +
	scale_x_continuous(name = "",
			   breaks = seq(
			   	from = 2009,
			   	to = 2017,
			   	by = 2)) +
	scale_y_continuous(name = "") +
	geom_line()
#
file <- "https://education.rstudio.com/blog/2020/02/instructor-certification-exams/ranking.csv"
df <- readr::read_csv(file = file)
df1 <-
	df |>
	group_by(item, rank) |>
	summarise(eval = dplyr::n()) |>
	mutate(total = sum(eval)) |>
	mutate(pc = eval / total)

df$item |> unique()
