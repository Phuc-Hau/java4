package com.oe.untils;

import com.oe.entity.User;

public class Auth {
    /**
     * Đối tượng này chứa thông tin người sử dụng sau khi đăng nhập
     */
    public static User user = null;
    /**
     * Xóa thông tin của người sử dụng khi có yêu cầu đăng xuất
     */
    public static void clear() {
        Auth.user = null;
    }
    /**
     * Kiểm tra xem đăng nhập hay chưa
     */
    public static boolean isLogin() {
        return Auth.user != null;
    }
     /**
     * Kiểm tra xem có phải là trưởng phòng hay không
     */
    public static boolean isManager() {
        return user.getAdminn();
    }
}