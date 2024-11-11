import matplotlib.pyplot as plt
import seaborn as sns

hue_colors = {"col3_val1":"#808080","col3_val2":"#00FF00"}
sns.scatterplot(x="col1", y="col2", data=df, 
                hue="col3", # Subgroup according to color
                hue_order=["col3_val2","col3_val1"],  # Show legend in this order
                palette=hue_colors)

plt.show()