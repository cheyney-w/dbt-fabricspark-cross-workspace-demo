Getting started:

1. Create the following in your Fabric tenant:
    - Workspace named 'MainWorkspace'
    - Workspace named 'OtherWorkspace'
    - Schema-enabled lakehouse in 'MainWorkspace' called 'MainLakehouse'
    - Schema-enabled lakehouse in 'OtherWorkspace' called 'OtherLakehouse'
2. `pip install -r requirements.txt`
3. Set the following environment variables:
    - `DBT_WORKSPACE_ID=<ID of MainWorkspace>`
    - `DBT_LAKEHOUSE_ID=<ID of of MainLakehouse>`
4. Run `dbt seed`. Seeds will be used as sources to make setup easier
5. Run `dbt run`
6. Run `dbt run` again to see an incremental run of incremental models