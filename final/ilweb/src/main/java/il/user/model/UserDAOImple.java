package il.user.model;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class UserDAOImple implements UserDAO {

	private SqlSessionTemplate sst;

	public UserDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}

	public int userJoin(UserDTO dto) {
		int count = sst.insert("userInsert", dto);

		return count;
	}

	public int idCheck(String id) {

		int count = sst.selectOne("idCheck", id);
		return count == 0 ? 0 : count;
	}

	public int nicknameCheck(String nickname) {

		int count = sst.selectOne("nicknameCheck", nickname);
		return count == 0 ? 0 : count;
	}

	public String loginCheck(String userid) {
		String pwd = sst.selectOne("loginCheck", userid);
		return pwd;
	}

	public String getUserInfo(String userid) {
		String name = sst.selectOne("getUserInfo", userid);
		return name;
	}

	public String emailCheck(String userid) {
		String echeck = sst.selectOne("emailCheck", userid);
		return echeck;
	}

	public int GetKey(String id, String user_key) {

		Map<String, String> map = new HashMap();

		map.put("id", id);
		map.put("emailCheck", user_key);

		int count = sst.update("GetKey", map);
		return count;
	}

	public int alter_userKey(String id, String key) {
		Map<String, String> map = new HashMap();

		map.put("id", id);
		map.put("emailCheck", key);

		int count = sst.update("alter_userKey", map);
		return count;

	}

	public int userType(String userid) {
		int userType = sst.selectOne("userType", userid);
		return userType;
	}
}