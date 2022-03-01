package com.mysoft.service;

import java.util.List;
import java.util.Map;

public interface ISysUserService {
List<Map<String,Object>> findSysUserRoleByName(String uname);
Map<String,Object> findPersonInfoByUid(String uid );
boolean updatePhotoByUname(String uname,String myphoto);
boolean updateUpwdByUid(String uid,String upwd);
boolean validateOldUpwd(String uname,String oldPwd);
boolean updateUserInfo(String uid,String displayname,String remark);
}
