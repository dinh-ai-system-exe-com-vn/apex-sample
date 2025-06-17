# Quy ước Status

Tài liệu liệt kê các giá trị trạng thái (STATUS) sử dụng trong hệ thống. Mọi module khi lưu trữ trạng thái cần tuân theo các giá trị dưới đây để thống nhất và dễ đa ngôn ngữ.

## 1. USERS
| Giá trị | Ý nghĩa |
|--------|---------|
| `ACTIVE` | Tài khoản hoạt động |
| `INACTIVE` | Tài khoản bị vô hiệu hoá |
| `LOCKED` | Khoá tạm thời |

## 2. PURCHASE_ORDERS
| Giá trị | Ý nghĩa |
|--------|---------|
| `NEW` | Đơn mới tạo |
| `PENDING_APPROVAL` | Chờ duyệt |
| `APPROVED` | Đã duyệt |
| `DELIVERED` | Đã giao hàng |
| `CLOSED` | Đã hoàn tất |
| `CANCELLED` | Huỷ |

## 3. PURCHASE_INVOICES
| Giá trị | Ý nghĩa |
|--------|---------|
| `DRAFT` | Chưa phát hành |
| `ISSUED` | Đã phát hành |
| `PAID` | Đã thanh toán |
| `PARTIALLY_PAID` | Thanh toán một phần |
| `CANCELLED` | Huỷ |

## 4. SUPPLIER_PAYMENTS
| Giá trị | Ý nghĩa |
|--------|---------|
| `PENDING` | Chờ xử lý |
| `PAID` | Đã thanh toán |
| `CANCELLED` | Huỷ |

## 5. SALES_ORDERS
| Giá trị | Ý nghĩa |
|--------|---------|
| `NEW` | Đơn mới tạo |
| `PENDING_APPROVAL` | Chờ duyệt |
| `APPROVED` | Đã duyệt |
| `DELIVERED` | Đã giao hàng |
| `CLOSED` | Đã hoàn tất |
| `CANCELLED` | Huỷ |

## 6. SALES_INVOICES
| Giá trị | Ý nghĩa |
|--------|---------|
| `DRAFT` | Chưa phát hành |
| `ISSUED` | Đã phát hành |
| `PAID` | Đã thanh toán |
| `PARTIALLY_PAID` | Thanh toán một phần |
| `CANCELLED` | Huỷ |

## 7. CUSTOMER_PAYMENTS
| Giá trị | Ý nghĩa |
|--------|---------|
| `PENDING` | Chờ thu tiền |
| `RECEIVED` | Đã nhận đủ |
| `PARTIALLY_RECEIVED` | Đã nhận một phần |
| `CANCELLED` | Huỷ |

## 8. Các cột dạng `IS_*`
Những cột có tiền tố `IS_` (ví dụ: `IS_ACTIVE`, `IS_ALLOWED`) được xem là kiểu
boolean. Tuỳ cấu hình, chúng lưu `TRUE/FALSE` hoặc `1/0`; vì vậy không cần liệt
kê `Y` hay `N`.

---

Áp dụng thống nhất các giá trị trên giúp việc kiểm soát nghiệp vụ, dịch thuật và báo cáo được chuẩn hoá trong toàn hệ thống.
