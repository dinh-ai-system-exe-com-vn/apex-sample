# State Management

Trang quản trị cho phép admin chuyển trạng thái toàn hệ thống.

- **Page ID:** 10 – *System State Management*

- **Bố cục**
  - Region "Current Status" hiển thị giá trị đọc từ bảng `SYSTEM_STATUS`.
  - Region "Update Status" chứa item select list `P_STATUS` với hai giá trị `NORMAL`, `PANDEMIC`.
  - Button **Save** và **Cancel**.

- **Luồng xử lý**
 1. Admin chọn giá trị mới và bấm **Save**.
 2. Process `UPDATE_SYSTEM_STATUS` chạy PL/SQL:
     ```plsql
     UPDATE system_status SET status = :P_STATUS, updated_at = SYSDATE, updated_by = :APP_USER;
     INSERT INTO status_history(status, changed_at, changed_by) VALUES(:P_STATUS, SYSDATE, :APP_USER);
     commit;
     ```
 3. Sau khi cập nhật, gọi `apex_util.invalidate_sessions` để các phiên khác nạp trạng thái mới (nếu cần).
 4. Thực thi Dynamic Action `Refresh Menu` để reload navigation và dashboard.
 5. Hiển thị thông báo "Trạng thái hệ thống đã được cập nhật" và quay về Dashboard.

- **Điều kiện và quyền**
  - Chỉ role `Admin` xem được trang này (Authorization Scheme `IS_ADMIN`).
  - Các quá trình cập nhật đều ghi log vào bảng `STATUS_HISTORY` để kiểm tra.

Màn hình này ảnh hưởng trực tiếp tới việc ẩn/hiện các module **Health Declaration**, **Testing** và các báo cáo. Tất cả trang khác nên kiểm tra `SYSTEM_STATUS` tại sự kiện *Before Header*.
