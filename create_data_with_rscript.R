
pacman::p_load(
            data.table,
            tidyverse,
            openxlsx,
            lubridate,
            skimr,
            DT,
            shiny,
            visdat)


dt <- fread('/Users/ophirbetser/Ophir/R PROJECTS/auto_git_update/data/my_dataset.csv')

cnt <- nrow(dt)
dt <- rbind(dt, list(lubridate::now(), cnt))
cnt <- cnt + 1

fwrite(dt, 
       '/Users/ophirbetser/Ophir/R PROJECTS/auto_git_update/data/my_dataset.csv'
       )

print("ophir")