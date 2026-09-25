import csv
import random
from datetime import datetime, timedelta

TOTAL_SALES = 1_000_000
OUTPUT_FILE = "sales_history.csv"

# Assume employees have IDs 1 through 20
EMPLOYEE_IDS = list(range(1, 21))

# Generate transactions across roughly one year
START_DATE = datetime(2025, 1, 1, 8, 0, 0)
TOTAL_DAYS = 365

# Peak rush week roughly halfway through the year
PEAK_START_DAY = 175
PEAK_END_DAY = 181


def generate_sale_price():
    """
    Most restaurant transactions will be somewhere between $8-$40,
    but occasionally customers make larger orders.
    """

    chance = random.random()

    if chance < 0.70:
        return round(random.uniform(8, 25), 2)

    elif chance < 0.95:
        return round(random.uniform(25, 50), 2)

    else:
        return round(random.uniform(50, 120), 2)


def generate_tip(sale_price):
    """
    Generates believable tips.
    Some people leave no tip, while most leave roughly 10-25%.
    """

    chance = random.random()

    if chance < 0.10:
        tip_percent = 0

    elif chance < 0.25:
        tip_percent = random.uniform(0.08, 0.15)

    elif chance < 0.85:
        tip_percent = random.uniform(0.15, 0.22)

    else:
        tip_percent = random.uniform(0.22, 0.30)

    return round(sale_price * tip_percent, 2)


def generate_time(day):
    """
    Generate a believable restaurant transaction time.

    Lunch and dinner are more common than early morning / late night.
    """

    time_group = random.random()

    if time_group < 0.15:
        # Morning
        hour = random.randint(8, 10)

    elif time_group < 0.45:
        # Lunch rush
        hour = random.randint(11, 13)

    elif time_group < 0.60:
        # Afternoon
        hour = random.randint(14, 16)

    elif time_group < 0.90:
        # Dinner rush
        hour = random.randint(17, 20)

    else:
        # Late evening
        hour = random.randint(21, 22)

    minute = random.randint(0, 59)
    second = random.randint(0, 59)

    return day.replace(
        hour=hour,
        minute=minute,
        second=second
    )


def main():

    # ---------------------------------------------------
    # Decide how many transactions each day receives
    # ---------------------------------------------------

    daily_weights = []

    for day_number in range(TOTAL_DAYS):

        # Normal day
        weight = random.uniform(0.8, 1.2)

        # Weekends can be slightly busier
        current_date = START_DATE + timedelta(days=day_number)

        if current_date.weekday() in [4, 5]:  # Friday / Saturday
            weight *= 1.25

        # ------------------------------------------------
        # PEAK RUSH WEEK
        # ------------------------------------------------
        # Much larger transaction volume for this week.
        if PEAK_START_DAY <= day_number <= PEAK_END_DAY:
            weight *= random.uniform(3.5, 4.5)

        daily_weights.append(weight)

    # ---------------------------------------------------
    # Generate CSV
    # ---------------------------------------------------

    with open(OUTPUT_FILE, "w", newline="") as file:

        writer = csv.writer(file)

        writer.writerow([
            "sale_id",
            "sale_price",
            "sale_tip",
            "sale_employee_id",
            "sale_date"
        ])

        for sale_id in range(1, TOTAL_SALES + 1):

            # Pick a day based on our transaction volume weights.
            # Peak-week days are therefore selected much more often.
            day_number = random.choices(
                range(TOTAL_DAYS),
                weights=daily_weights,
                k=1
            )[0]

            sale_day = START_DATE + timedelta(days=day_number)
            sale_date = generate_time(sale_day)

            sale_price = generate_sale_price()
            sale_tip = generate_tip(sale_price)

            employee_id = random.choice(EMPLOYEE_IDS)

            writer.writerow([
                sale_id,
                f"{sale_price:.2f}",
                f"{sale_tip:.2f}",
                employee_id,
                sale_date.strftime("%Y-%m-%d %H:%M:%S")
            ])

            if sale_id % 100_000 == 0:
                print(f"Generated {sale_id:,} sales")

    print(f"\nDone! Generated {TOTAL_SALES:,} transactions.")
    print(f"Saved to: {OUTPUT_FILE}")


if __name__ == "__main__":
    main()