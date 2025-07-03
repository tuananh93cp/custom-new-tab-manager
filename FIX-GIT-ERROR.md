# 🔧 Sửa Lỗi Git Push

## ❌ Lỗi Hiện Tại
```
! [rejected] main -> main (fetch first)
error: failed to push some refs to 'https://github.com/tuananh93cp/blue-sky-theme-changer.git'
```

## 🔍 Nguyên Nhân
1. **Sai tên repository:** Đang push lên `blue-sky-theme-changer` thay vì `custom-new-tab-manager`
2. **Remote có commits:** GitHub tạo README tự động khi tạo repo

## ✅ Giải Pháp

### Bước 1: Kiểm tra remote hiện tại
```bash
git remote -v
```

### Bước 2A: Nếu muốn đổi tên repository
```bash
# Xóa remote cũ
git remote remove origin

# Add remote mới với tên đúng
git remote add origin https://github.com/tuananh93cp/custom-new-tab-manager.git
```

### Bước 2B: Hoặc tiếp tục với repo hiện tại
```bash
# Giữ nguyên remote hiện tại
# (Nếu bạn muốn dùng tên blue-sky-theme-changer)
```

### Bước 3: Pull remote changes trước
```bash
git pull origin main --allow-unrelated-histories
```

### Bước 4: Push lại
```bash
git push -u origin main
```

## 🚨 Nếu Vẫn Có Conflict

### Merge conflicts (nếu có):
```bash
# Xem files conflict
git status

# Edit files để resolve conflicts
# Sau đó:
git add .
git commit -m "Resolve merge conflicts"
git push -u origin main
```

## 🔄 Phương Án Thay Thế: Force Push (Cẩn Thận!)

### Chỉ dùng nếu repo mới tạo và không ai khác đang làm việc:
```bash
git push -u origin main --force
```

## 📝 Commands Đầy Đủ (Chọn 1 trong 2)

### Tùy chọn 1: Đổi sang repo đúng tên
```bash
git remote remove origin
git remote add origin https://github.com/tuananh93cp/custom-new-tab-manager.git
git pull origin main --allow-unrelated-histories
git push -u origin main
```

### Tùy chọn 2: Giữ repo hiện tại
```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

## 🎯 Sau Khi Push Thành Công

### Update Privacy Policy URL trong Chrome Web Store info:
- **Nếu dùng custom-new-tab-manager:**
  ```
  https://github.com/tuananh93cp/custom-new-tab-manager/blob/main/privacy-policy.html
  ```

- **Nếu dùng blue-sky-theme-changer:**
  ```
  https://github.com/tuananh93cp/blue-sky-theme-changer/blob/main/privacy-policy.html
  ```

## ⚠️ Lưu Ý Quan Trọng

1. **Tên repo nên phù hợp với extension** để dễ quản lý
2. **Privacy Policy URL phải chính xác** cho Chrome Web Store
3. **Repo phải là Public** để Chrome Web Store access được

---
**💡 Khuyến nghị: Dùng tên repo `custom-new-tab-manager` để consistency!** 