FROM astrocrpublic.azurecr.io/runtime:3.2-3

RUN python -m venv dbt_env && \
    . dbt_env/bin/activate && \
    pip install dbt-snowflake && \
    pip install --no-cache-dir dbt-snowflake