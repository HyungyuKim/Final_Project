package il.user.model;

public interface UserDAO {
   
   public int userJoin(UserDTO dto);
   
   public int idCheck(String id);
   public int nicknameCheck(String nickname);
   public String loginCheck(String userid);
   public String getUserInfo(String userid);
   public String emailCheck(String userid);
   int GetKey(String id, String user_key);
   int alter_userKey(String id, String key);
   
   /**°ü¸®ÀÚ */
   public int userType(String userid);
}