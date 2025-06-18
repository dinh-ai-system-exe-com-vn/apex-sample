# Sơ Đồ Hệ Thống Quản Lý Kiểm Dịch

Tài liệu này tổng hợp các sơ đồ chính của dự án, bao gồm luồng di chuyển giữa các màn hình, mối liên hệ giữa các chức năng và quan hệ giữa các bảng dữ liệu.

## 1. Sơ Đồ Di Chuyển Màn Hình

```mermaid
flowchart TD
    DASH(Dashboard) --> STATE(System State)
    DASH --> ENTRY(Entry List)
    ENTRY --> ENTRY_FORM(Entry Form)
    ENTRY --> ENTRY_DETAIL(Entry Detail)
    ENTRY_FORM --> HEALTH(Health Declaration)
    ENTRY_DETAIL --> HEALTH
    HEALTH --> TEST(Test Form)
    STATE -->|Pandemic| TEST
    STATE -->|Pandemic| PANDEMIC_REPORT(Pandemic Report)
    STATE -->|Normal| REGULAR_REPORT(Regular Report)
```

Các màn hình chính được kết nối theo thứ tự sử dụng phổ biến. Khi trạng thái hệ thống là `Pandemic`, các trang Xét Nghiệm và Báo Cáo Dịch được kích hoạt.

## 2. Sơ Đồ Liên Hệ Chức Năng

```mermaid
graph LR
    STATE -- cập nhật --> NAVIGATION
    NAVIGATION -- điều hướng --> ENTRY
    ENTRY -- tạo --> HEALTH
    HEALTH -- tạo --> TEST
    TEST -- dữ liệu --> PANDEMIC_REPORT
    ENTRY -- dữ liệu --> REGULAR_REPORT
```

Sơ đồ trên thể hiện sự phụ thuộc giữa các module. `STATE` ảnh hưởng đến `NAVIGATION` và quyết định việc hiển thị các tính năng còn lại.

## 3. Sơ Đồ Quan Hệ Các Bảng (ERD)

```mermaid
erDiagram
    SYSTEM_STATUS ||--o{ STATUS_HISTORY : logs
    SYSTEM_STATUS ||--|| TRAVELERS : status
    TRAVELERS ||--|{ HEALTH_DECLARATIONS : declares
    TRAVELERS ||--|{ TEST_ORDERS : tests
    TEST_ORDERS ||--|{ STATUS_HISTORY : reference
```

Quan hệ bảng ở mức tối giản phục vụ demo: bảng `TRAVELERS` liên kết đến `HEALTH_DECLARATIONS` và `TEST_ORDERS`; `STATUS_HISTORY` ghi nhận lịch sử trạng thái.

