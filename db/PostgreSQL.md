# PostgreSQL 結構示意圖（UCI-SECOM）

## 層級關係概念
- **Server**
  - `PostgreSQL`
    - **Database**
      - `secom`
        - **Schema**
          - `public`
            - **Table**
              - `secom_data`
                - **Columns**
                  - `time` (timestamp)
                  - `v0` ~ `v589` (double precision)
                  - `label` (integer)

## Mermaid 圖
```mermaid
flowchart TD
  A[Server: PostgreSQL]
  A --> B[Database: secom]
  B --> C[Schema: public]
  C --> D[Table: secom_data]
  D --> E1[time timestamp]
  D --> E2[v0 ~ v589 double precision]
  D --> E3[label integer]
```