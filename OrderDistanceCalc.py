from orderDAO import readCol
import maps
import orderDAO


def order_distances():

    orderDB = orderDAO.connect()

    home_base = "e1w 1un"
    distances = []
    postcodes = readCol(orderDB, "street_postcode")
    order_ids = readCol(orderDB, "order_id")
    order_items = readCol(orderDB, "order_items")

    count = 0
    for postcode in postcodes:

        distance = maps.calculate_distance(home_base, postcode)

        order_id = [order_ids[count]]
        row = [order_ids[count], distance, order_items[count]]

        count = count + 1

        distances.append([row])
        
    return distances 
