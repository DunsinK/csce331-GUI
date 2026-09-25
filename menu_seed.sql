-- Seeds menu_items from images in img/menu/ (github.com/DunsinK/csce331-GUI)
-- image_url points at raw.githubusercontent.com since the DB is shared with
-- clients that don't have a clone of this repo.
-- Prices are placeholders (5.25/5.75/6.25) -- update to real prices before running in prod.
insert into menu_items (menu_item_id, menu_item_name, price, image_url)
values (
        1,
        'Brown Sugar Boba Milk',
        5.75,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/brown_sugar_boba_milk.png'
    ),
    (
        2,
        'Chocolate Milk Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/chocolate_milk_tea.png'
    ),
    (
        3,
        'Classic Pearl Milk Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/classic_pearl_milk_tea.png'
    ),
    (
        4,
        'Cookies & Cream Milk Tea',
        5.75,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/cookies_and_cream_milk_tea.png'
    ),
    (
        5,
        'Grapefruit Green Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/grapefruit_green_tea.png'
    ),
    (
        6,
        'Hokkaido Milk Tea',
        5.75,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/hokkaido_milk_tea.png'
    ),
    (
        7,
        'Honey Earl Grey Milk Tea',
        5.75,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/honey_earl_grey_milk_tea.png'
    ),
    (
        8,
        'Honeydew Milk Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/honeydew_milk_tea.png'
    ),
    (
        9,
        'Jasmine Milk Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/jasmine_milk_tea.png'
    ),
    (
        10,
        'Lychee Green Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/lychee_green_tea.png'
    ),
    (
        11,
        'Mango Green Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/mango_green_tea.png'
    ),
    (
        12,
        'Mango Milk Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/mango_milk_tea.png'
    ),
    (
        13,
        'Matcha Cheese Foam Tea',
        6.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/matcha_cheese_foam_tea.png'
    ),
    (
        14,
        'Matcha Milk Tea',
        5.75,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/matcha_milk_tea.png'
    ),
    (
        15,
        'Oolong Milk Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/oolong_milk_tea.png'
    ),
    (
        16,
        'Passionfruit Green Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/passionfruit_green_tea.png'
    ),
    (
        17,
        'Peach Green Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/peach_green_tea.png'
    ),
    (
        18,
        'QQ Happy Family Milk Tea',
        6.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/qq_happy_family_milk_tea.png'
    ),
    (
        19,
        'Strawberry Green Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/strawberry_green_tea.png'
    ),
    (
        20,
        'Strawberry Matcha Latte',
        6.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/strawberry_matcha_latte.png'
    ),
    (
        21,
        'Taro Milk Tea',
        5.75,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/taro_milk_tea.png'
    ),
    (
        22,
        'Thai Milk Tea',
        5.75,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/thai_milk_tea.png'
    ),
    (
        23,
        'Thai Tea Boba Supreme',
        6.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/thai_tea_boba_supreme.png'
    ),
    (
        24,
        'Winter Melon Tea',
        5.25,
        'https://raw.githubusercontent.com/DunsinK/csce331-GUI/main/img/menu/winter_melon_tea.png'
    );