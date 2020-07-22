package il.user.model;
import java.sql.*;
public class UserDTO {
   private int user_idx;
   private String user_name;
   private String id;
   private String pw;
   private String nickname;
   private String birth;
   private int postal_code;
   private String road_addr;
   private String branch_addr;
   private String detailed_addr;
   private String noted;
   private String profile_img;
   private int user_type;
   private String phone;
   private String email;
   private String emailCheck;
   private Date joindate;
public UserDTO() {
   super();
}
public UserDTO(int user_idx, String user_name, String id, String pw, String nickname, String birth, int postal_code,
      String road_addr, String branch_addr, String detailed_addr, String noted, String profile_img, int user_type,
      String phone, String email, String emailCheck, Date joindate) {
   super();
   this.user_idx = user_idx;
   this.user_name = user_name;
   this.id = id;
   this.pw = pw;
   this.nickname = nickname;
   this.birth = birth;
   this.postal_code = postal_code;
   this.road_addr = road_addr;
   this.branch_addr = branch_addr;
   this.detailed_addr = detailed_addr;
   this.noted = noted;
   this.profile_img = profile_img;
   this.user_type = user_type;
   this.phone = phone;
   this.email = email;
   this.emailCheck = emailCheck;
   this.joindate = joindate;
}
public int getUser_idx() {
   return user_idx;
}
public void setUser_idx(int user_idx) {
   this.user_idx = user_idx;
}
public String getUser_name() {
   return user_name;
}
public void setUser_name(String user_name) {
   this.user_name = user_name;
}
public String getId() {
   return id;
}
public void setId(String id) {
   this.id = id;
}
public String getPw() {
   return pw;
}
public void setPw(String pw) {
   this.pw = pw;
}
public String getNickname() {
   return nickname;
}
public void setNickname(String nickname) {
   this.nickname = nickname;
}
public String getBirth() {
   return birth;
}
public void setBirth(String birth) {
   this.birth = birth;
}
public int getPostal_code() {
   return postal_code;
}
public void setPostal_code(int postal_code) {
   this.postal_code = postal_code;
}
public String getRoad_addr() {
   return road_addr;
}
public void setRoad_addr(String road_addr) {
   this.road_addr = road_addr;
}
public String getBranch_addr() {
   return branch_addr;
}
public void setBranch_addr(String branch_addr) {
   this.branch_addr = branch_addr;
}
public String getDetailed_addr() {
   return detailed_addr;
}
public void setDetailed_addr(String detailed_addr) {
   this.detailed_addr = detailed_addr;
}
public String getNoted() {
   return noted;
}
public void setNoted(String noted) {
   this.noted = noted;
}
public String getProfile_img() {
   return profile_img;
}
public void setProfile_img(String profile_img) {
   this.profile_img = profile_img;
}
public int getUser_type() {
   return user_type;
}
public void setUser_type(int user_type) {
   this.user_type = user_type;
}
public String getPhone() {
   return phone;
}
public void setPhone(String phone) {
   this.phone = phone;
}
public String getEmail() {
   return email;
}
public void setEmail(String email) {
   this.email = email;
}
public String getEmailCheck() {
   return emailCheck;
}
public void setEmailCheck(String emailCheck) {
   this.emailCheck = emailCheck;
}
public Date getJoindate() {
   return joindate;
}
public void setJoindate(Date joindate) {
   this.joindate = joindate;
}
      
   }