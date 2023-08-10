-- Active: 1691093644596@@127.0.0.1@5432@university_management
CREATE TABLE
    IF NOT EXISTS departments(
        deptID SERIAL primary KEY,
        name TEXT NOT NULL   
    );

INSERT INTO departments
VALUES('Marketing', 2), ('Finance', 3), ('Sales', 2), ('IT', 5), ('HR', 4), ('Last Name', 1), ('Finance', 4), ('IT', 1), ('HR', 3), ('Marketing', 1), ('IT', 5), ('HR', 2), ('Finance', 4), ('Marketing', 1), ('Sales', 2), ('HR', 5), ('Marketing', 5), ('Finance', 2), ('Sales', 4), ('Marketing', 3), ('Finance', 5), ('IT', 1), ('Sales', 3), ('Finance', 1), ('Marketing', 4), ('HR', 2), ('Sales', 4), ('IT', 3), ('Marketing', 1), ('Finance', 5), ('IT', 3), ('Marketing', 2), ('HR', 1), ('IT', 4), ('Marketing', 3), ('Sales', 5), ('HR', 1), ('Marketing', 2), ('Finance', 4), ('Sales', 1), ('Marketing', 3), ('IT', 5), ('Sales', 4), ('HR', 2), ('Marketing', 1), ('Finance', 3), ('Sales', 1), ('Marketing', 5), ('IT', 2), ('HR', 4), ('Finance', 2), ('Marketing', 1), ('Sales', 3), ('IT', 5), ('Finance', 4), ('HR', 2), ('Marketing', 5), ('IT', 1), ('HR', 3), ('Sales', 4), ('Marketing', 5), ('Finance', 2), ('Sales', 3), ('Marketing', 1), ('IT', 4), ('HR', 5), ('Finance', 3), ('Marketing', 2), ('Sales', 1), ('IT', 5), ('Finance', 3), ('HR', 4), ('Marketing', 2), ('Sales', 5), ('Finance', 1), ('Sales', 2), ('Marketing', 3), ('IT', 4), ('HR', 5), ('Marketing', 2), ('Finance', 3), ('Sales', 1), ('Marketing', 4), ('IT', 5), ('HR', 1), ('Sales', 3), ('Marketing', 4), ('Finance', 2), ('Sales', 5), ('Marketing', 3), ('IT', 1), ('HR', 2), ('Finance', 4), ('Marketing', 1), ('HR', 5), ('Sales', 2), ('IT', 3), ('HR', 4), ('Marketing', 5), ('Finance', 1), ('Sales', 3), ('Marketing', 4), ('IT', 5), ('HR', 2), ('Sales', 1), ('Marketing', 3), ('Finance', 2), ('Sales', 4), ('Marketing', 5), ('IT', 1), ('HR', 3), ('Finance', 4), ('Marketing', 2), ('Sales', 1), ('Marketing', 3), ('Marketing', 4), ('Marketing', 1), ('Marketing', 2), ('Marketing', 4), ('Marketing', 3), ('Marketing', 1), ('Marketing', 5);


CREATE TABLE
    IF NOT EXISTS employeess (
        empID SERIAL PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT NOT NULL,
        salary INTEGER NOT NULL,
        joining_date DATE NOT NULL,
        deptID INTEGER NOT NULL,
        CONSTRAINT fk_deptID FOREIGN KEY(deptID) REFERENCES departments(deptID)
    );

INSERT INTO
    employees(
        name,
        email,
        salary,
        joining_date,
        deptID
    )
VALUES (
        'John Doe',
        'john.doe@example.com',
        100000,
        '2023-01-01',
        1
    ), (
        'Jane Doe',
        'jane.doe@example.com',
        200000,
        '2023-02-01',
        2
    ), (
        'Peter Smith',
        'peter.smith@example.com',
        300000,
        '2023-03-01',
        3
    ), (
        'Mary Jones',
        'mary.jones@example.com',
        400000,
        '2023-04-01',
        4
    ), (
        'David Brown',
        'david.brown@example.com',
        500000,
        '2023-05-01',
        5
    ), (
        'Last Name',
        'last.name@example.com',
        1000000,
        '2023-08-08',
        6
    ), (
        'Jane Doe',
        'jane.doe@example.com',
        700000,
        '2023-07-01',
        7
    ), (
        'Peter Jones',
        'peter.jones@example.com',
        800000,
        '2023-08-01',
        8
    ), (
        'Mary Brown',
        'mary.brown@example.com',
        900000,
        '2023-09-01',
        9
    ), (
        'David Green',
        'david.green@example.com',
        1000000,
        '2023-10-01',
        10
    ), (
        'Michael Williams',
        'michael.williams@example.com',
        1100000,
        '2023-11-01',
        11
    ), (
        'Sarah Johnson',
        'sarah.johnson@example.com',
        1200000,
        '2023-12-01',
        12
    ), (
        'Thomas Davis',
        'thomas.davis@example.com',
        1300000,
        '2024-01-01',
        13
    ), (
        'Emily White',
        'emily.white@example.com',
        1400000,
        '2024-02-01',
        14
    ), (
        'Christopher Black',
        'christopher.black@example.com',
        1500000,
        '2024-03-01',
        15
    ), (
        'Hannah Brown',
        'hannah.brown@example.com',
        1600000,
        '2024-04-01',
        16
    ), (
        'William Green',
        'william.green@example.com',
        1700000,
        '2024-05-01',
        17
    ), (
        'Elizabeth Smith',
        'elizabeth.smith@example.com',
        1800000,
        '2024-06-01',
        18
    ), (
        'James Jones',
        'james.jones@example.com',
        1900000,
        '2024-07-01',
        19
    ), (
        'Emily Williams',
        'emily.williams@example.com',
        2000000,
        '2024-08-01',
        20
    ), (
        'David Brown',
        'david.brown@example.com',
        2100000,
        '2024-09-01',
        21
    ), (
        'Michael Green',
        'michael.green@example.com',
        2200000,
        '2024-10-01',
        22
    ), (
        'Sarah White',
        'sarah.white@example.com',
        2300000,
        '2024-11-01',
        23
    ), (
        'Thomas Davis',
        'thomas.davis@example.com',
        2400000,
        '2024-12-01',
        24
    ), (
        'Emily Black',
        'emily.black@example.com',
        2500000,
        '2025-01-01',
        25
    ), (
        'Hannah Green',
        'hannah.green@example.com',
        2600000,
        '2025-02-01',
        26
    ), (
        'William Black',
        'william.black@example.com',
        2700000,
        '2025-03-01',
        27
    ), (
        'Elizabeth Brown',
        'elizabeth.brown@example.com',
        2800000,
        '2025-04-01',
        28
    ), (
        'James White',
        'james.white@example.com',
        2900000,
        '2025-05-01',
        29
    ), (
        'Emily Davis',
        'emily.davis@example.com',
        3000000,
        '2025-06-01',
        30
    ), (
        'David Williams',
        'david.williams@example.com',
        3100000,
        '2025-07-01',
        31
    ), (
        'Michael Green',
        'michael.green@example.com',
        3200000,
        '2025-08-01',
        32
    ), (
        'Sarah Black',
        'sarah.black@example.com',
        3300000,
        '2025-09-01',
        33
    ), (
        'Thomas Brown',
        'thomas.brown@example.com',
        3400000,
        '2025-10-01',
        34
    ), (
        'Emily White',
        'emily.white@example.com',
        3500000,
        '2025-11-01',
        35
    ), (
        'Christopher Davis',
        'christopher.davis@example.com',
        3600000,
        '2025-12-01',
        36
    ), (
        'Hannah Williams',
        'hannah.williams@example.com',
        3700000,
        '2026-01-01',
        37
    ), (
        'William Green',
        'william.green@example.com',
        3800000,
        '2026-02-01',
        38
    ), (
        'Elizabeth Black',
        'elizabeth.black@example.com',
        3900000,
        '2026-03-01',
        39
    ), (
        'James Brown',
        'james.brown@example.com',
        4000000,
        '2026-04-01',
        40
    ), (
        'Emily White',
        'emily.white@example.com',
        4100000,
        '2026-05-01',
        41
    ), (
        'David Davis',
        'david.davis@example.com',
        4200000,
        '2026-06-01',
        42
    ), (
        'Michael Williams',
        'michael.williams@example.com',
        4300000,
        '2026-07-01',
        43
    ), (
        'Sarah Green',
        'sarah.green@example.com',
        4400000,
        '2026-08-01',
        44
    ), (
        'Hannah Brown',
        'hannah.brown@example.com',
        4500000,
        '2026-09-01',
        45
    ), (
        'William Green',
        'william.green@example.com',
        4600000,
        '2026-10-01',
        46
    ), (
        'Elizabeth Williams',
        'elizabeth.williams@example.com',
        4700000,
        '2026-11-01',
        47
    ), (
        'James Black',
        'james.black@example.com',
        4800000,
        '2026-12-01',
        48
    ), (
        'Emily Davis',
        'emily.davis@example.com',
        4900000,
        '2027-01-01',
        49
    ), (
        'David White',
        'david.white@example.com',
        5000000,
        '2027-02-01',
        50
    ), (
        'Michael Brown',
        'michael.brown@example.com',
        5100000,
        '2027-03-01',
        51
    ), (
        'Sarah Green',
        'sarah.green@example.com',
        5200000,
        '2027-04-01',
        52
    ), (
        'Thomas Williams',
        'thomas.williams@example.com',
        5300000,
        '2027-05-01',
        53
    ), (
        'Emily Black',
        'emily.black@example.com',
        5400000,
        '2027-06-01',
        54
    ), (
        'Christopher Davis',
        'christopher.davis@example.com',
        5500000,
        '2027-07-01',
        55
    ), (
        'Hannah White',
        'hannah.white@example.com',
        5600000,
        '2027-08-01',
        56
    ), (
        'William Green',
        'william.green@example.com',
        5700000,
        '2027-09-01',
        57
    ), (
        'Elizabeth Black',
        'elizabeth.black@example.com',
        5800000,
        '2027-10-01',
        58
    ), (
        'James Brown',
        'james.brown@example.com',
        5900000,
        '2027-11-01',
        59
    ), (
        'Emily Williams',
        'emily.williams@example.com',
        6000000,
        '2027-12-01',
        60
    ), (
        'David Davis',
        'david.davis@example.com',
        6100000,
        '2028-01-01',
        61
    ), (
        'Michael White',
        'michael.white@example.com',
        6200000,
        '2028-02-01',
        62
    ), (
        'Sarah Brown',
        'sarah.brown@example.com',
        6300000,
        '2028-03-01',
        63
    ), (
        'Hannah Black',
        'hannah.black@example.com',
        6400000,
        '2028-04-01',
        64
    ), (
        'William Davis',
        'william.davis@example.com',
        6500000,
        '2028-05-01',
        65
    ), (
        'Elizabeth Williams',
        'elizabeth.williams@example.com',
        6600000,
        '2028-06-01',
        66
    ), (
        'James Green',
        'james.green@example.com',
        6700000,
        '2028-07-01',
        67
    ), (
        'Emily Brown',
        'emily.brown@example.com',
        6800000,
        '2028-08-01',
        68
    ), (
        'David White',
        'david.white@example.com',
        6900000,
        '2028-09-01',
        69
    ), (
        'Michael Black',
        'michael.black@example.com',
        7000000,
        '2028-10-01',
        70
    ), (
        'Sarah Davis',
        'sarah.davis@example.com',
        7100000,
        '2028-11-01',
        71
    ), (
        'Thomas Williams',
        'thomas.williams@example.com',
        7200000,
        '2028-12-01',
        72
    ), (
        'Emily Green',
        'emily.green@example.com',
        7300000,
        '2029-01-01',
        73
    ), (
        'Christopher Brown',
        'christopher.brown@example.com',
        7400000,
        '2029-02-01',
        74
    ), (
        'Hannah White',
        'hannah.white@example.com',
        7500000,
        '2029-03-01',
        75
    ), (
        'William Green',
        'william.green@example.com',
        7600000,
        '2029-04-01',
        76
    ), (
        'Elizabeth Black',
        'elizabeth.black@example.com',
        7700000,
        '2029-05-01',
        77
    ), (
        'James Brown',
        'james.brown@example.com',
        7800000,
        '2029-06-01',
        78
    ), (
        'Emily Williams',
        'emily.williams@example.com',
        7900000,
        '2029-07-01',
        79
    ), (
        'David Davis',
        'david.davis@example.com',
        8000000,
        '2029-08-01',
        80
    ), (
        'Michael White',
        'michael.white@example.com',
        8100000,
        '2029-09-01',
        81
    ), (
        'Sarah Trown',
        'sarah.brown@example.com',
        8200000,
        '2029-10-01',
        82
    ), (
        'Hannah Black',
        'hannah.black@example.com',
        8300000,
        '2029-11-01',
        83
    ), (
        'William Davis',
        'william.davis@example.com',
        8400000,
        '2029-12-01',
        84
    ), (
        'Elizabeth Williams',
        'elizabeth.williams@example.com',
        8500000,
        '2030-01-01',
        85
    ), (
        'James Green',
        'james.green@example.com',
        8600000,
        '2030-02-01',
        86
    ), (
        'Emily Brown',
        'emily.brown@example.com',
        8700000,
        '2030-03-01',
        87
    ), (
        'David White',
        'david.white@example.com',
        8800000,
        '2030-04-01',
        88
    ), (
        'Michael Black',
        'michael.black@example.com',
        8900000,
        '2030-05-01',
        89
    ), (
        'Sarah Davis',
        'sarah.davis@example.com',
        9000000,
        '2030-06-01',
        90
    ), (
        'Thomas Williams',
        'thomas.williams@example.com',
        9100000,
        '2030-07-01',
        91
    ), (
        'Emily Green',
        'emily.green@example.com',
        9200000,
        '2030-08-01',
        92
    ), (
        'Christopher Brown',
        'christopher.brown@example.com',
        9300000,
        '2030-09-01',
        93
    ), (
        'Hannah White',
        'hannah.white@example.com',
        9400000,
        '2030-10-01',
        94
    ), (
        'William Green',
        'william.green@example.com',
        9500000,
        '2030-11-01',
        95
    ), (
        'Elizabeth Black',
        'elizabeth.black@example.com',
        9600000,
        '2030-12-01',
        96
    ), (
        'Etrizabeth Black',
        'elizabeth.blarrck@example.com',
        960000550,
        '2060-12-01',
        97
    ), (
        'Eabeth Black',
        'elbeth.blarrck@example.com',
        90550,
        '2065-12-01',
        98
    ), (
        'Etrizabbveth Black',
        'elizaxeth.blarrck@example.com',
        9600550,
        '2064-12-01',
        99
    ), (
        'Etrizabggth Black',
        'elizabeeeth.blarrck@example.com',
        90000550,
        '2063-12-01',
        100
    );