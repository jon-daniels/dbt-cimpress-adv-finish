{% snapshot country_codes_snapshot %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='country',
          check_cols=['un_code'],
        )
    }}

    select * from {{ ref('rf_country_codes') }}

{% endsnapshot %}