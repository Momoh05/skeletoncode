DROP TABLE IF EXISTS order_details;

DROP TABLE IF EXISTS orders;

DROP TABLE IF EXISTS customers;

DROP TABLE IF EXISTS inventory;

DROP TABLE IF EXISTS products;

DROP TABLE IF EXISTS suppliers;

DROP TABLE IF EXISTS categories;

/*CREATE TABLES*/
CREATE TABLE
    customers (
        customer_id INTEGER,
        name VARCHAR(255),
        email VARCHAR(255),
        phone VARCHAR(50),
        PRIMARY KEY (customer_id)
    );

CREATE TABLE
    categories (
        category_id INTEGER,
        name VARCHAR(255),
        description TEXT,
        PRIMARY KEY (category_id)
    );

CREATE TABLE
    products (
        product_id INTEGER,
        category_id INTEGER,
        name VARCHAR(255),
        price DECIMAL(10, 2),
        quantity INTEGER,
        PRIMARY KEY (product_id),
        CONSTRAINT FK_products_category_id FOREIGN KEY (category_id) REFERENCES categories (category_id)
    );

CREATE TABLE
    orders (
        order_id INTEGER,
        customer_id INTEGER,
        order_amount DECIMAL(10, 2),
        status INTEGER,
        date DATE,
        PRIMARY KEY (order_id),
        CONSTRAINT FK_orders_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
    );

CREATE TABLE
    order_details (
        order_details_id INTEGER,
        order_id INTEGER,
        product_id INTEGER,
        quantity INTEGER,
        total_price DECIMAL(10, 2),
        PRIMARY KEY (order_details_id),
        CONSTRAINT FK_order_details_product_id FOREIGN KEY (product_id) REFERENCES products (product_id),
        CONSTRAINT FK_order_details_order_id FOREIGN KEY (order_id) REFERENCES orders (order_id)
    );

CREATE TABLE
    suppliers (
        supplier_id INTEGER,
        name VARCHAR(255),
        phone VARCHAR(50),
        email VARCHAR(255),
        work_address VARCHAR(255),
        PRIMARY KEY (supplier_id)
    );

CREATE TABLE
    inventory (
        inventory_id INTEGER,
        supplier_id INTEGER,
        product_id INTEGER,
        PRIMARY KEY (inventory_id),
        CONSTRAINT FK_inventory_product_id FOREIGN KEY (product_id) REFERENCES products (product_id),
        CONSTRAINT FK_inventory_supplier_id FOREIGN KEY (supplier_id) REFERENCES suppliers (supplier_id)
    );

/*INSERT CUSTOMER DATA*/
insert into
    customers (customer_id, name, email, phone)
values
    (
        1,
        'Anne-marie Di Giacomettino',
        'adi0@unicef.org',
        '503-597-9388'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        2,
        'Aloysius Spittal',
        'aspittal1@hhs.gov',
        '871-294-0294'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        3,
        'Radcliffe Thirlwell',
        'rthirlwell2@umn.edu',
        '255-274-4608'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        4,
        'Alanna Siely',
        'asiely3@soundcloud.com',
        '516-836-8287'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        5,
        'Cordelia Rubinovitsch',
        'crubinovitsch4@mail.ru',
        '774-277-1652'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        6,
        'Doris Jeyness',
        'djeyness5@yelp.com',
        '989-654-5983'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        7,
        'Rosaleen Bransdon',
        'rbransdon6@topsy.com',
        '815-153-9286'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        8,
        'Carmella Mc Pake',
        'cmc7@live.com',
        '566-454-4400'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        9,
        'Rutger Hammand',
        'rhammand8@yahoo.com',
        '197-756-7516'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        10,
        'Barde Brew',
        'bbrew9@dion.ne.jp',
        '194-636-4967'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        11,
        'Jared Kildale',
        'jkildalea@miibeian.gov.cn',
        '568-489-9445'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        12,
        'Rubie Bernat',
        'rbernatb@phpbb.com',
        '179-182-8953'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        13,
        'Dulcia Hucks',
        'dhucksc@t-online.de',
        '838-595-4154'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        14,
        'Kleon MacAvaddy',
        'kmacavaddyd@booking.com',
        '149-277-2016'
    );

insert into
    customers (customer_id, name, email, phone)
values
    (
        15,
        'Murvyn Bloxland',
        'mbloxlande@hibu.com',
        '795-396-0505'
    );

/*INSERT CUSTOMER DATA*/
insert into
    categories (category_id, name, description)
values
    (1, 'Baby', 'Morbi ut odio.');

insert into
    categories (category_id, name, description)
values
    (
        2,
        'Computers',
        'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.'
    );

insert into
    categories (category_id, name, description)
values
    (
        3,
        'Industrial',
        'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'
    );

insert into
    categories (category_id, name, description)
values
    (4, 'Movies', 'Donec dapibus.');

insert into
    categories (category_id, name, description)
values
    (
        5,
        'Beauty',
        'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.'
    );

/*INSERT PRODUCTS DATA*/
insert into
    products (product_id, category_id, name, price, quantity)
values
    (
        1,
        5,
        'Shrimp - 16/20, Peeled Deviened',
        86.53,
        72
    );

insert into
    products (product_id, category_id, name, price, quantity)
values
    (2, 1, 'Pate - Liver', 40.12, 92);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (3, 5, 'Beans - Black Bean, Preserved', 84.58, 26);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (4, 5, 'Vinegar - Cider', 40.76, 63);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (5, 2, 'Carbonated Water - White Grape', 51.52, 94);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (6, 5, 'Shrimp - Black Tiger 8 - 12', 48.42, 22);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (7, 3, 'Campari', 7.99, 2);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (8, 5, 'Wine - Chateauneuf Du Pape', 63.34, 83);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (9, 2, 'Cranberries - Dry', 38.16, 30);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (10, 2, 'Strawberries', 66.11, 80);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (11, 5, 'Soup - Campbells, Chix Gumbo', 6.74, 8);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (12, 2, 'Radish - Pickled', 48.65, 1);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (13, 1, 'Taro Root', 88.51, 84);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (14, 3, 'Banana - Leaves', 7.16, 33);

insert into
    products (product_id, category_id, name, price, quantity)
values
    (15, 2, 'Ginger - Crystalized', 39.58, 24);

/*ORDERS INSERT DATA*/
insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (1, 7, 81.71, 1, '8/10/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (2, 7, 7.91, 3, '8/11/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (3, 2, 73.77, 3, '1/25/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (4, 3, 22.32, 3, '10/29/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (5, 4, 4.49, 1, '4/8/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (6, 4, 20.51, 3, '7/15/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (7, 10, 67.32, 3, '9/20/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (8, 7, 68.09, 3, '9/5/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (9, 8, 90.63, 1, '3/23/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (10, 2, 52.44, 2, '7/31/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (11, 3, 55.76, 2, '8/28/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (12, 2, 49.97, 2, '11/4/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (13, 3, 34.74, 2, '6/6/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (14, 2, 56.48, 2, '2/5/2023');

insert into
    orders (order_id, customer_id, order_amount, status, date)
values
    (15, 2, 24.0, 1, '10/24/2023');

/*ORDER DETAILS INSERT DATA*/
insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (1, 15, 7, 12, 99.7);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (2, 10, 4, 1, 45.44);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (3, 15, 3, 11, 6.23);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (4, 12, 5, 15, 36.8);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (5, 4, 2, 13, 12.42);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (6, 8, 5, 7, 38.14);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (7, 4, 8, 8, 83.74);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (8, 12, 10, 15, 55.19);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (9, 11, 2, 12, 39.75);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (10, 1, 4, 12, 91.22);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (11, 1, 6, 15, 43.96);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (12, 11, 7, 9, 50.8);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (13, 1, 10, 11, 27.95);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (14, 8, 3, 15, 18.75);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (15, 12, 7, 6, 52.9);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (16, 15, 10, 15, 70.93);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (17, 13, 8, 12, 91.93);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (18, 4, 9, 4, 32.7);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (19, 4, 3, 11, 78.82);

insert into
    order_details (
        order_details_id,
        order_id,
        product_id,
        quantity,
        total_price
    )
values
    (20, 14, 6, 1, 58.65);

/*SUPPLIER INSERT DATA*/
insert into
    suppliers (supplier_id, name, phone, email, work_address)
values
    (
        1,
        'Shanon Worsham',
        '936-810-7067',
        'sworsham0@github.com',
        '6 Killdeer Place'
    );

insert into
    suppliers (supplier_id, name, phone, email, work_address)
values
    (
        2,
        'Ario Greeves',
        '551-342-6833',
        'agreeves1@mail.ru',
        '5390 5th Circle'
    );

insert into
    suppliers (supplier_id, name, phone, email, work_address)
values
    (
        3,
        'Josie Marzellano',
        '838-448-0409',
        'jmarzellano2@paginegialle.it',
        '0210 1st Terrace'
    );

insert into
    suppliers (supplier_id, name, phone, email, work_address)
values
    (
        4,
        'Herschel Varvara',
        '148-848-2782',
        'hvarvara3@sourceforge.net',
        '48836 Gina Court'
    );

insert into
    suppliers (supplier_id, name, phone, email, work_address)
values
    (
        5,
        'Leontine Tingey',
        '448-534-4376',
        'ltingey4@mapquest.com',
        '04644 Vermont Park'
    );

/*INVENTORY INSERT DATA*/
insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (1, 1, 13);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (2, 4, 1);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (3, 5, 11);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (4, 2, 12);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (5, 2, 10);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (6, 1, 11);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (7, 1, 4);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (8, 4, 6);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (9, 3, 11);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (10, 4, 2);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (11, 2, 7);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (12, 4, 7);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (13, 3, 4);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (14, 2, 12);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (15, 4, 11);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (16, 3, 11);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (17, 2, 4);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (18, 1, 12);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (19, 5, 7);

insert into
    inventory (inventory_id, supplier_id, product_id)
values
    (20, 4, 5);