# PostgreSQL 結構示意圖（目前專案）

## 層級關係概念

- Server
  - Database
    - Schema
      - Table
        - Column

## 你的實際架構（UCI-SECOM 專案）

- **Server**
  - `PostgreSQL`（本機或指定伺服器）

    - **Database**
      - `secom`

        - **Schema**
          - `public`

            - **Table**
              - `secom_data`

                - **Columns（欄位）**
                  - `time` (timestamp)
                  - `v0` ~ `v589` (double precision)
                  - `label` (integer)

---

## Mermaid 圖（VS Code 可視覺化）

```mermaid
graph TD

  A[Server: PostgreSQL] --> B[Database: secom]
  B --> C[Schema: public]
  C --> D[Table: secom_data]
  D --> E1[time (timestamp)]
  D --> E2[v0 ~ v589 (double precision)]
  D --> E3[label (integer)]
