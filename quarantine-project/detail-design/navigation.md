# Dynamic Navigation

Giao diện điều hướng thay đổi theo trạng thái và vai trò.

- **Page ID:** 1 – *Dynamic Navigation*

- **Cấu trúc menu**
  - Sử dụng `List Template` trong APEX, từng entry có điều kiện hiển thị dựa trên `SYSTEM_STATUS` và `APP_USER_ROLE`.
  - Ví dụ mục **Testing** đặt điều kiện: `return apex_app_setting.get_value('STATUS') = 'PANDEMIC'`.
  - Các mục chung như **Entry Management** luôn hiển thị nhưng có thể ẩn sub-item.

- **Tải lại menu**
  - Ở trang **State Management**, sau khi admin đổi trạng thái, gọi `apex.navigation.dialog.close` và sử dụng `apex.server.process` để refresh list menu thông qua `apex_theme_45_util.refresh_menu_list` (hoặc tương đương).
  - Dùng Dynamic Action `After Refresh` của item trạng thái để cập nhật logo hoặc màu sắc chủ đề.

- **Phân quyền vai trò**
  - `Admin`: xem và truy cập mọi mục.
  - `Staff`: ẩn trang cấu hình trạng thái, chỉ xem module được phân công.
  - Quyền được kiểm tra bằng `authorization scheme` gắn cho từng entry menu.

- **Quan hệ với các module khác**
  - Vì Navigation quyết định khả năng truy cập, mọi trang con đều cần gọi `validate_state` trong `Before Header` để tránh vào nhầm trạng thái.
  - Khi trạng thái hệ thống thay đổi, menu phản ánh ngay để người dùng không cần đăng xuất đăng nhập lại.
