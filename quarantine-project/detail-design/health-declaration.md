# Health Declaration

Form khai báo y tế cho từng người nhập cảnh.

- **Page ID:** 30 – *Health Declaration Form*

- **Chức năng chính:**
  - Thu thập thông tin sức khỏe ngay sau khi ghi nhận người nhập cảnh.
  - Cho phép cập nhật nhiều lần nếu cần bổ sung dữ liệu.

- **Bố cục form**
  - Item ẩn `TRAVELER_ID` lấy từ Entry Management; giá trị giữ qua URL hoặc session.
  - `TEMPERATURE` (number, °C) – bắt buộc nhập; cảnh báo màu đỏ khi >37.5°C bằng Dynamic Action.
  - `SYMPTOMS` (textarea) – danh sách triệu chứng được nhập tự do.
  - `DECLARED_AT` – mặc định SYSDATE, có thể chỉnh.
  - Các mục bổ sung khi `PANDEMIC`:
    - `CONTACT_HISTORY` (textarea).
    - `RISK_ZONES` (select list đa lựa chọn từ danh sách khu vực). Có thể cấu hình cascade nếu chọn quốc gia.
    - `TEST_FILE` (file browse) – lưu đường dẫn file xét nghiệm.
  - Button **Save** ghi dữ liệu vào `HEALTH_DECLARATIONS`.

- **Tương tác & Điều kiện**
  - Sử dụng *Server Side Condition* để ẩn/hiện các trường `CONTACT_HISTORY`, `RISK_ZONES`, `TEST_FILE` theo `SYSTEM_STATUS`.
  - Dynamic Action kiểm tra nhiệt độ và hiển thị thông báo "Yêu cầu xét nghiệm" khi trên 37.5°C hoặc khi người dùng tick checkbox "Yêu cầu xét nghiệm".
  - Sau khi lưu, nếu cần xét nghiệm, redirect tới **Testing Management** với tham số `TRAVELER_ID`.

- **Mối liên hệ**: bảng `HEALTH_DECLARATIONS` liên kết `TRAVELERS` qua khóa `TRAVELER_ID`.
  Các bản ghi xét nghiệm ở module **Testing Management** cũng liên kết với traveler này.
