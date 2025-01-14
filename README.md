Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
dbt run --profiles-dir .
dbt test --profiles-dir .
dbt debug --profiles-dir .
`dbt debug` validate data warehouse connection

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

python -m pip install dbt-core dbt-snowflake
dbt --version
pip freeze > requirements.txt
```
install the package in packages.yml
```
dbt deps
```
generate YAML for  source tables
```
dbt --quiet run-operation generate_source --args '{"schema_name": "de_project", "database_name": "brave_database", "table_names":["inventory_data", "product_data", "user_data", "user_journey"], "generate_columns": true, "include_data_types": true}' > models/raw_data/de_project_ddl.yml
```