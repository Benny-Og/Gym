use GymData;
show tables;
select * from gymmem;


## THE NUMBER OF MALES AND FEMALES IN THE DATASET
select count(*) as Number_of_Females from gymmem
where Gender = 'Female';  #462

select count(*) as Number_of_Males from gymmem
where Gender = 'Male';  #511


# THE AVERAGE AGE OF EACH GENDER
select Gender, format(avg(Age), 1) from gymmem
where Gender = 'Female' group by Gender;  #38.3

select Gender, format(avg(Age), 1) from gymmem
where Gender = 'Male' group by Gender;  #39.0


## THE AVERAGE GYM DURATION BY GENDER
select Gender, format(avg(`Session_Duration (hours)`), 2) from gymmem
where Gender = 'Female' group by Gender;  #1.26

select Gender, format(avg(`Session_Duration (hours)`), 2) from gymmem
where Gender = 'Male' group by Gender;  #1.25


## THE AVERAGE DAYS PER WEEK AT THE GYM
select Gender, format(avg(`Workout_Frequency (days/week)`), 2) from gymmem
where Gender = 'Female' group by Gender;  #3.34

select Gender, format(avg(`Workout_Frequency (days/week)`), 2) from gymmem
where Gender = 'Male' group by Gender;  #3.31




