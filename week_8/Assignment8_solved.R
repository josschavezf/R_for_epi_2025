# Assignment week 8

# Exercise 1: Using the sinai_covid dataset, 
# complete the following tasks:

library(tidyverse)
library(janitor)

sinai_covid <- read_csv("Sinai_covid.csv")
sinai_covid <- clean_names(sinai_covid)

# - Count the number of patients depending on 
# their smoking status per ethnic group. 
# Save the result in a variable

x <- sinai_covid %>% 
    group_by(smoking_status) %>% 
    count(ethnicity)

# - Represent the data on a column plot and fill by smoking_status

ggplot(x, aes(x = ethnicity, y = n, fill = smoking_status)) +
    geom_col()

# - Split each bar by the smoking status

ggplot(x, aes(x = ethnicity, y = n, fill = smoking_status)) +
    geom_col(position = position_dodge())

# - Add a plot title, axis title and change the legend 
# title to remove the underscores

ggplot(x, aes(x = ethnicity, y = n, fill = smoking_status)) +
    geom_col(position = position_dodge()) +
    labs(title = "Patients by ethnicity and smoking status",
         y = "Number of patients",
         fill = "Smoking status")

#  Exercise 2:  Using the sinai_covid dataset, 
# complete the following tasks:

# - Count the number of patients depending on their 
# diabetes status per ethnic group and sex

x <- sinai_covid %>% 
    group_by(diabetes, ethnicity) %>% 
    count(sex)

# - Represent the data on a column plot, with the ethnic 
# groups at x axis

ggplot(x, aes(x = ethnicity, y = n)) +
    geom_col()


# - Split each bar depending on the diabetes status
ggplot(x, aes(x = ethnicity, y = n, fill = factor(diabetes))) +
    geom_col(position = position_dodge())



# - Add a plot title, axis titles and modify the legend title 

ggplot(x, aes(x = ethnicity, y = n, fill = factor(diabetes))) +
    geom_col(position = position_dodge()) +
    labs(title = "Patiens by ethnicity and diabetes status",
         y = "Number of patients",
         fill = "Diabetes status")

# - Change the filling colors of the bars 
# (use scale_fill_brewer or scale_fill_manual )

ggplot(x, aes(x = ethnicity, y = n, fill = factor(diabetes))) +
    geom_col(position = position_dodge()) +
    labs(title = "Patiens by ethnicity and diabetes status",
         y = "Number of patients",
         fill = "Diabetes status") +
    scale_fill_brewer(palette = 3)

ggplot(x, aes(x = ethnicity, y = n, fill = factor(diabetes))) +
    geom_col(position = position_dodge()) +
    labs(title = "Patiens by ethnicity and diabetes status",
         y = "Number of patients",
         fill = "Diabetes status") +
    scale_fill_manual(values = c("0" = "red", "1" = "blue"))

# - Use the theme() layer to modify the angle 
# or size of the axis text 

ggplot(x, aes(x = ethnicity, y = n, fill = factor(diabetes))) +
    geom_col(position = position_dodge()) +
    labs(title = "Patiens by ethnicity and diabetes status",
         y = "Number of patients",
         fill = "Diabetes status") +
    scale_fill_manual(values = c("0" = "red", "1" = "blue")) +
    theme(axis.text = element_text(angle = 90, size = 5))


# - Split the plots by sex (use facets)

ggplot(x, aes(x = ethnicity, y = n, fill = factor(diabetes))) +
    geom_col(position = position_dodge()) +
    labs(title = "Patiens by ethnicity and diabetes status",
         y = "Number of patients",
         fill = "Diabetes status") +
    scale_fill_manual(values = c("0" = "red", "1" = "blue")) +
    theme(axis.text = element_text(angle = 90, size = 5)) +
    facet_wrap(~sex)

ggplot(x, aes(x = ethnicity, y = n, fill = factor(diabetes))) +
    geom_col(position = position_dodge()) +
    labs(title = "Patiens by ethnicity and diabetes status",
         y = "Number of patients",
         fill = "Diabetes status") +
    scale_fill_manual(values = c("0" = "red", "1" = "blue")) +
    theme(axis.text = element_text(angle = 90, size = 5)) +
    facet_grid("sex")

#  Exercise 3: Create at least one plot using your final project dataset. 
# Paste here the code to create the plot or plots

