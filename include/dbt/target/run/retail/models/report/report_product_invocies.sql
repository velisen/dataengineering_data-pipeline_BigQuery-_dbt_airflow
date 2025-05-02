
  
    

    create or replace table `airflow-tutorial-458409`.`retail`.`report_product_invocies`
    
    

    OPTIONS()
    as (
      SELECT
  p.product_id,
  p.stock_code,
  p.description,
  SUM(fi.quantity) AS total_quantity_sold
FROM `airflow-tutorial-458409`.`retail`.`fct_invoices` fi
JOIN `airflow-tutorial-458409`.`retail`.`dim_product` p ON fi.product_id = p.product_id
GROUP BY p.product_id, p.stock_code, p.description
ORDER BY total_quantity_sold DESC
LIMIT 10
    );
  