# csce331-GUI

## Compile

```powershell
javac -cp postgresql-42.2.8.jar *.java
```

## Run

```powershell
java -cp ".;postgresql-42.2.8.jar" GUI
java -cp ".;postgresql-42.2.8.jar" jdbcpostgreSQL
java -cp ".;postgresql-42.2.8.jar" jdbcpostgreSQLGUI
```

## Seed DB

Connect with `psql` (see `commands.md`), then run:

```sql
\copy employees(employee_id, first_name, last_name, password_hash, employee_role) FROM 'updated_csvs/employees.csv' WITH (FORMAT csv, HEADER true)
\copy sales(sale_id, sale_date, sale_price, sale_tip, sale_employee_id) FROM 'updated_csvs/sales.csv' WITH (FORMAT csv, HEADER true)
\copy menu_items(menu_item_id, menu_item_name, price, image_url) FROM 'csv/menu_items.csv' WITH (FORMAT csv, HEADER true)
```

Load `employees` before `sales` (FK on `sale_employee_id`).
