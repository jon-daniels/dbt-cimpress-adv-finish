{% set dbt_relation_1=ref('rf_coastline_distances') %}

{% set dbt_relation_2=ref('rf_coastline_distances_cleaned') %}

{{ audit_helper.compare_relations(
    a_relation=dbt_relation_1,
    b_relation=dbt_relation_2,
    primary_key="country"
) }}