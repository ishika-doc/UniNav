-- =========================================
-- UniNav Database Schema v1.0
-- Smart Campus Navigation System
-- Starting campus: Wits East Campus
-- =========================================

CREATE TABLE universities (
    university_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

CREATE TABLE campuses (
    campus_id INTEGER PRIMARY KEY AUTOINCREMENT,
    university_id INTEGER NOT NULL,
    name VARCHAR(100) NOT NULL,
    map_image TEXT,
    center_lat DOUBLE,
    center_lng DOUBLE,
    FOREIGN KEY (university_id) REFERENCES universities(university_id)
);

CREATE TABLE buildings (
    building_id INTEGER PRIMARY KEY AUTOINCREMENT,
    campus_id INTEGER NOT NULL,
    name VARCHAR(150) NOT NULL,
    short_code VARCHAR(20),
    latitude DOUBLE NOT NULL,
    longitude DOUBLE NOT NULL,
    description TEXT,
    category VARCHAR(50),
    FOREIGN KEY (campus_id) REFERENCES campuses(campus_id)
);

CREATE TABLE nodes (
    node_id INTEGER PRIMARY KEY AUTOINCREMENT,
    campus_id INTEGER NOT NULL,
    latitude DOUBLE NOT NULL,
    longitude DOUBLE NOT NULL,
    FOREIGN KEY (campus_id) REFERENCES campuses(campus_id)
);

CREATE TABLE paths (
    path_id INTEGER PRIMARY KEY AUTOINCREMENT,
    from_node INTEGER NOT NULL,
    to_node INTEGER NOT NULL,
    distance DOUBLE NOT NULL,
    FOREIGN KEY (from_node) REFERENCES nodes(node_id),
    FOREIGN KEY (to_node) REFERENCES nodes(node_id)
);
