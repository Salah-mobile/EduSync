use edusync;

INSERT INTO
    roles (label)
VALUES ("admin"),
    ("professeur"),
    ("students");

INSERT INTO
    classes (name, classroom_number)
VALUES ("math", 30),
    ("CYBER SECURITY", 20),
    ("PHP", 15);

INSERT INTO
    users (
        firstName,
        lastName,
        emil,
        password,
        role_id
    )
VALUES (
        "salah",
        "tabit",
        "tabitsalah12@gmail.com",
        "Salah_204080",
        1
    ),
    (
        "khalil",
        "tabit",
        "khalilT@gmail.com",
        "khalil_20840",
        3
    ),
    (
        "loffy",
        "malik9aranisa",
        "LOFY@gmail.com",
        "LOFY_284",
        2
    );

INSERT INTO
    users (
        `firstName`,
        `lastName`,
        emil,
        password,
        role_id
    )
VALUES (
        "amine",
        "el hadi",
        "amine.hadi@gmail.com",
        "amine_123",
        3
    ),
    (
        "fatima",
        "zahra",
        "fatima.zahra@gmail.com",
        "fatima_456",
        3
    ),
    (
        "mehdi",
        "boulahya",
        "mehdi.b@gmail.com",
        "mehdi_789",
        3
    )

INSERT INTO
    students (
        dateofbirth,
        student_number,
        user_id,
        classe_id
    )
VALUES ("2008-08-07", 2, 3, 1),
    ("2005-08-06", 4, 3, 2),
    ("2009-01-06", 5, 3, 3),
    ("2006-01-06", 6, 3, 3);

INSERT INTO
    users (
        `firstName`,
        `lastName`,
        emil,
        password,
        role_id
    )
VALUES (
        "yassine",
        "ouazzani",
        "yassine.ouazzani@gmail.com",
        "yassine_123",
        2
    ),
    (
        "salma",
        "karimi",
        "salma.karimi@gmail.com",
        "salma_456",
        2
    ),
    (
        "hicham",
        "el mansouri",
        "hicham.m@gmail.com",
        "hicham_789",
        2
    );
INSERT INTO
    courses (
        title,
        description,
        total_hours,
        user_id
    )
VALUES (
        "Introduction à la Programmation",
        "Apprendre les bases de la programmation",
        40,
        3
    ),
    (
        "Développement Web",
        "HTML, CSS, JavaScript pour créer des sites web",
        60,
        7
    ),
    (
        "Base de Données SQL",
        "Apprendre MySQL et la gestion des données",
        45,
        8
    ),
    (
        "Flutter Mobile",
        "Créer des applications mobiles avec Flutter",
        50,
        9
    ),
    (
        "Cybersécurité",
        "Introduction à la sécurité informatique",
        35,
        3
    );

INSERT INTO enrollments (enrolled_at, status, student_id, course_id)
VALUES
(NOW(), "active", 2, 1),
(NOW(), "active", 3, 2),
(NOW(), "pending", 4, 3),
(NOW(), "active", 1, 1);


SELECT CONCAT(u.`firstName`,' ',u.`lastName`) , s.student_number , s.dateofbirth , c.name,c.classroom_number
FROM students s
JOIN classes c on c.id=s.classe_id
JOIN users u on u.id=s.user_id
