from openpyxl import Workbook, load_workbook
from OrderDistanceCalc import order_distances
import pandas as pd

orders = order_distances()

data = pd.DataFrame(orders)
data.to_excel("orderSheet.xlsx", index=False, header=False)
