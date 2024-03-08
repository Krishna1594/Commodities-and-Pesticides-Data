CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateKPIs`()
BEGIN
    -- Insert calculated KPIs into the KPIs table
    # Total Test Centres / Labs
    INSERT INTO KPIs (kpi_name, kpi_value)
    SELECT 'Total test centres', COUNT(DISTINCT(lab)) FROM pdp_db.pdp2022_results;
    
    # Total Samples
    INSERT INTO KPIs (kpi_name, kpi_value)
    SELECT 'Total samples tested', COUNT(Sample_pk) FROM pdp_db.pdp2022_samples;
    
    # Total test results
    INSERT INTO KPIs (kpi_name, kpi_value)
    SELECT 'Total test results', COUNT(sample_pk) FROM pdp_db.pdp2022_results;
    
    # Total pesticides tested
    INSERT INTO KPIs (kpi_name, kpi_value)
    SELECT 'Total pesticides tested', COUNT(DISTINCT(pest_code)) FROM pdp_db.pdp2022_results;
    
    # Total commodities tested
    INSERT INTO KPIs (kpi_name, kpi_value)
    SELECT 'Total commodities tested', COUNT(DISTINCT(commod)) FROM pdp_db.pdp2022_results;

	
END