angle = 35.25;
adjacent = 100;
opposite = adjacent * tan(angle);

polygon(points = [[0,0],[adjacent,0],[adjacent, opposite]], convexity = 10);