# 1. Python Fundamentals

# Variables

# 1. Create variables for product name, quantity, unit price, and discount percentage, then calculate the final
# amount.
product_name = "iPhone 15"
quantity = 1
unit_price = 85000.00
discount_percentage = 20

print(f"Final price {product_name} : {(quantity * unit_price) * (1 - (discount_percentage / 100))}")


# 2. Create variables for five monthly sales values and calculate total sales.
jan_sales = 100
feb_sales = 103
mar_sales = 98
apr_sales = 120
may_sales = 117
total_sales = jan_sales + feb_sales + mar_sales + apr_sales + may_sales
print(total_sales)
# 3. Store a customer's first name and last name separately, then create and print the full name.
first_name = "Alex"
last_name = "don"
full_name = f"{first_name} {last_name}"
print(full_name)

# 4. Store revenue and cost in variables, then calculate profit and profit margin.
revenue= 145256.00
cost=45000.00
profit = revenue - cost
profit_margin = (profit / revenue) * 100

print(f"Profit: {profit}")
print(f"Profit Margin: {profit_margin:.2f}%")
# 5. Store total revenue and number of orders, then calculate average order value.
revenue= 145256.00
number_of_orders=8
print(f"Average order Value : {revenue/number_of_orders}")

# 6. Store an original price and discount rate, then calculate the discounted price.
mrp = 150000.00
discount_percentage_6 = 15
print(f"Discounted price: {mrp-(mrp * (discount_percentage_6/100))}")

# 7. Create three product variables in one statement and print them in a formatted line.
product_1 = "Car"
product_2 = "Truck"
product_3 = "Jeep"
print(f"product_1: {product_1}, product_2: {product_2}, product_3: {product_3}")

# 8. Swap the values of two sales variables and print the values before and after the swap.
value_1 = 10000
value_2 = 20000
print(f"Before swapping \n  Value_1 : {value_1}\n   Value_2 : {value_2}")
temp= value_2
value_2 = value_1
value_1 = temp
print(f"After swapping \n  Value_1 : {value_1}\n   Value_2 : {value_2}")

# 9. Store salary and bonus percentage, then calculate total compensation.
salary = 100000
bounce_percentage = 35
print(f"Total Compansation : {salary + (salary * bounce_percentage/100)}")

# 10. Use variables for quantity, price, tax rate, and shipping cost to calculate a final bill.
quantity_10 = 10
price_10 = 50000.00
tax_rate = 18
shipping_cost = 5000.00
total_amount = quantity_10 * price_10
print(f"Final Bill: {(total_amount + total_amount * tax_rate/100)+shipping_cost}")


