USE pdp_db;

#DROP TABLE KPIs;

# Creating our KPIs table
CREATE TABLE IF NOT EXISTS KPIs (
    id INT AUTO_INCREMENT PRIMARY KEY,
	kpi_name VARCHAR(255),
    kpi_value INT
);

# Calling our KPI procedure whenever the db gets updated
CALL CalculateKPIs()