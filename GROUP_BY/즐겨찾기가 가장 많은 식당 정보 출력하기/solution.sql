SELECT
    R.FOOD_TYPE,
    REST_ID,
    REST_NAME,
    FAVORITES
FROM
    (
        SELECT
            FOOD_TYPE,
            MAX(FAVORITES) AS MAX_FAVORITES
        FROM
            REST_INFO
        GROUP BY
            FOOD_TYPE
    ) S
JOIN
    REST_INFO R ON R.FOOD_TYPE = S.FOOD_TYPE AND R.FAVORITES = S.MAX_FAVORITES
ORDER BY
    FOOD_TYPE DESC;