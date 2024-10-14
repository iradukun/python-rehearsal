import matplotlib.pyplot as plt
import  numpy as np

Hours=([1,2,3,4,5])
Scores=([50,55,60,65,70])
plt.scatter(Hours,Scores)
plt.xlabel("Hours Studied")
plt.ylabel("Exam Score")
plt.title("Hours studied vs Exam Score")
plt.show()