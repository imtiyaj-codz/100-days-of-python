student_scores = {
    'Harry': 88,
    'Ron': 78,
    'Hermione': 95,
    'Draco': 75,
    'Neville': 60
}

student_grades = {}

for name in student_scores:
    marks=student_scores[name]

    if marks >=91 and marks <=100:
        student_grades[name]="Outstanding"
    elif marks >=81 and marks <=90:
        student_grades[name]="Exceeds expectation"
    elif marks >=71 and marks <=80:
        student_grades[name]="Acceptable"
    else:
        student_grades[name]="Fail"
    
print(student_grades)
# Scores 91 - 100: Grade = "Outstanding"
# Scores 81 - 90: Grade = "Exceeds Expectations"
# Scores 71 - 80: Grade = "Acceptable"
# Scores 70 or lower: Grade = "Fail"