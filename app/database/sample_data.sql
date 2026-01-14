-- =========================================
-- UniNav Sample Data - Wits East Campus
-- =========================================

-- University
INSERT INTO universities (name, city)
VALUES ('University of the Witwatersrand', 'Johannesburg');

-- Campus
INSERT INTO campuses (university_id, name, center_lat, center_lng)
VALUES (1, 'East Campus', -26.1899, 28.0305);

-- Buildings (sample set)
INSERT INTO buildings (campus_id, name, short_code, latitude, longitude, description, category) VALUES
(1, 'Great Hall', 'GH', -26.1895, 28.0302, 'Main ceremonial hall at Wits.', 'Hall'),
(1, 'Solomon Mahlangu House', 'SMH', -26.1902, 28.0310, 'Student services and administration.', 'Admin'),
(1, 'Central Block', 'CB', -26.1898, 28.0315, 'Lecture halls and offices.', 'Lecture'),
(1, 'Wartenweiler Library', 'Library', -26.1892, 28.0308, 'Main campus library.', 'Library'),
(1, 'Matrix Building', 'Matrix', -26.1889, 28.0300, 'Student hub and food outlets.', 'Student Centre');
