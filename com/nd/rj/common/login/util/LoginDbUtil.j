.bytecode 50.0
.class public synchronized com/nd/rj/common/login/util/LoginDbUtil
.super java/lang/Object

.field private static final 'BIND_DEL_SQL' Ljava/lang/String; = "delete from bind_user "

.field private static final 'BIND_INSERT_SQL' Ljava/lang/String; = "insert into bind_user(uap_uid,oap_uid,joindate,telephone,signature,update_time,is_active,sys_avatar,user_name,work_id,duty,mobile_phone,email,unit_name,unit_shortname,studend_id,depporcass_id,gender,birthday,blood,site,description,fax,addr,post_code,unit_type,is_getall,is_get_extinfo,friend_updatetime) values('%s','%s','%s','%s','%s','%s',%d,%d,'%s','%s','%s','%s','%s','%s','%s','%s','%s',%d,'%s','%s','%s','%s','%s','%s','%s',%d,%d,%d,'%s')"

.field private static final 'BIND_SEC_ALL' Ljava/lang/String; = "select * from bind_user"

.field private static final 'BIND_UPADATE_SQL' Ljava/lang/String; = "update bind_user set joindate='%s',telephone='%s',signature='%s',update_time='%s',is_active=%d,sys_avatar=%d,user_name='%s',work_id='%s',duty='%s',mobile_phone='%s',email='%s',unit_name='%s',unit_shortname='%s',studend_id='%s',depporcass_id='%s',gender=%d,birthday='%s',blood='%s',site='%s',description='%s',fax='%s',addr='%s',post_code='%s',unit_type=%d,is_getall=%d,is_get_extinfo=%d,friend_updatetime='%s' where uap_uid='%s' and oap_uid='%s'"

.field private static final 'DIC_DEL_BY_ID' Ljava/lang/String; = "delete from user_dictionary where id=%d"

.field private static final 'DIC_INSERT_SQL' Ljava/lang/String; = "insert into user_dictionary(id,attr_id,value) values(%d,'%s','%s')"

.field private static final 'DIC_SELECT_SQL' Ljava/lang/String; = "select * from user_dictionary where id=%d and attr_id='%s'"

.field private static final 'DIC_UPADATE_SQL' Ljava/lang/String; = "update user_dictionary set value='%s' where id=%d and attr_id='%s'"

.field private static final 'OAP_DEL_SQL' Ljava/lang/String; = "delete from oap_user "

.field private static final 'OAP_INSERT_SQL' Ljava/lang/String; = "insert into oap_user(uap_uid,ticket,nick_name,account,blow_fish,oap_uid,oap_unitid,pwd_time,bind_uap_account,last_login_time,is_org_admin,type,is_auto_login,is_save_pwd,is_current_user,login_type) values('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s',%d,%d,%d,%d,%d,%d)"

.field private static final 'OAP_SEC_ALL' Ljava/lang/String; = "select * from oap_user"

.field private static final 'OAP_SEC_BY_UID' Ljava/lang/String; = "select * from oap_user where uap_uid='%s' and oap_uid='%s'"

.field private static final 'OAP_UPADTE_STUTUS' Ljava/lang/String; = "update oap_user set is_auto_login=%d,is_current_user=%d"

.field private static final 'OAP_UPDATE_BY_UID' Ljava/lang/String; = "update oap_user set ticket='%s',nick_name='%s',account='%s',blow_fish='%s',pwd_time='%s',last_login_time='%s',is_auto_login=%d,is_save_pwd=%d,is_current_user=%d  where uap_uid='%s' and oap_uid='%s'"

.field private static final 'OAP_UPDATE_NICK_NAME' Ljava/lang/String; = "update oap_user set nick_name='%s' where uap_uid='%s' and oap_uid='%s'"

.field private static final 'UAP_DEL_SQL' Ljava/lang/String; = "delete from uap_user "

.field private static final 'UAP_INSERT_SQL' Ljava/lang/String; = "insert into uap_user(uid,ticket,nick_name,account,blow_fish,last_login_time,is_auto_login,is_save_pwd,is_current_user) values('%s','%s','%s','%s','%s','%s',%d,%d,%d)"

.field private static final 'UAP_SEC_ALL' Ljava/lang/String; = "select * from uap_user"

.field private static final 'UAP_UAPDATE_SQL' Ljava/lang/String; = "update uap_user set ticket='%s',nick_name='%s',account='%s',blow_fish='%s',last_login_time='%s',is_save_pwd=%d,is_auto_login=%d,is_current_user=%d where uid='%s'"

.field private static final 'UAP_UPADTE_STUTUS' Ljava/lang/String; = "update uap_user set is_auto_login=%d,is_current_user=%d"

.field private static final 'UAP_UPDATE_NICK_NAME' Ljava/lang/String; = "update uap_user set nick_name='%s' where uid='%s'"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static delByAccount(Landroid/content/Context;Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch all from L14 to L15 using L3
aconst_null
astore 3
aconst_null
astore 4
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 5
L1:
aload 5
astore 4
aload 5
astore 3
L4:
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
tableswitch 0
L16
L17
L18
default : L19
L5:
aload 5
astore 4
aload 5
astore 3
L6:
aload 0
aload 1
aload 5
aconst_null
invokestatic com/nd/rj/common/login/util/LoginDbUtil/oapDelByCount(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/util/db/IDataBaseRef;Landroid/database/Cursor;)Z
istore 2
L7:
aload 5
ifnull L20
aload 5
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L20:
iconst_0
ifeq L21
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L21:
iload 2
ireturn
L17:
aload 5
astore 4
aload 5
astore 3
L8:
aload 0
aload 1
aload 5
aconst_null
invokestatic com/nd/rj/common/login/util/LoginDbUtil/oapDelByCount(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/util/db/IDataBaseRef;Landroid/database/Cursor;)Z
istore 2
L9:
goto L7
L16:
aload 5
astore 4
aload 5
astore 3
L10:
aload 0
ldc "delete from uap_user  where account='%s'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
istore 2
L11:
goto L7
L18:
aload 5
astore 4
aload 5
astore 3
L12:
aload 0
aload 1
aload 5
aconst_null
invokestatic com/nd/rj/common/login/util/LoginDbUtil/oapDelByCount(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/util/db/IDataBaseRef;Landroid/database/Cursor;)Z
istore 2
L13:
goto L7
L2:
astore 0
aload 4
astore 3
L14:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L15:
iconst_0
istore 2
aload 4
ifnull L22
aload 4
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L22:
iconst_0
ifeq L21
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L3:
astore 0
aload 3
ifnull L23
aload 3
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L23:
iconst_0
ifeq L24
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L24:
aload 0
athrow
L19:
goto L5
.limit locals 6
.limit stack 6
.end method

.method public static delOapUserByOapUid(Landroid/content/Context;J)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
aconst_null
astore 5
aconst_null
astore 4
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 6
L1:
aload 6
astore 4
aload 6
astore 5
L4:
aload 0
lload 1
aload 6
aconst_null
invokestatic com/nd/rj/common/login/util/LoginDbUtil/oapDelByOapUid(Landroid/content/Context;JLcom/nd/rj/common/util/db/IDataBaseRef;Landroid/database/Cursor;)Z
istore 3
L5:
aload 6
ifnull L8
aload 6
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L8:
iconst_0
ifeq L9
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L9:
iload 3
ireturn
L2:
astore 0
aload 4
astore 5
L6:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L7:
iconst_0
istore 3
aload 4
ifnull L10
aload 4
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L10:
iconst_0
ifeq L9
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L3:
astore 0
aload 5
ifnull L11
aload 5
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L11:
iconst_0
ifeq L12
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L12:
aload 0
athrow
.limit locals 7
.limit stack 5
.end method

.method public static delOapUserByUapUid(Landroid/content/Context;J)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
aconst_null
astore 5
aconst_null
astore 4
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 6
L1:
aload 6
astore 4
aload 6
astore 5
L4:
aload 0
lload 1
aload 6
aconst_null
invokestatic com/nd/rj/common/login/util/LoginDbUtil/oapDelByUapUid(Landroid/content/Context;JLcom/nd/rj/common/util/db/IDataBaseRef;Landroid/database/Cursor;)Z
istore 3
L5:
aload 6
ifnull L8
aload 6
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L8:
iconst_0
ifeq L9
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L9:
iload 3
ireturn
L2:
astore 0
aload 4
astore 5
L6:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L7:
iconst_0
istore 3
aload 4
ifnull L10
aload 4
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L10:
iconst_0
ifeq L9
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L3:
astore 0
aload 5
ifnull L11
aload 5
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L11:
iconst_0
ifeq L12
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L12:
aload 0
athrow
.limit locals 7
.limit stack 5
.end method

.method public static delUserEtrasById(Landroid/content/Context;I)Z
aload 0
ldc "delete from user_dictionary where id=%d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method private static exeSql(Landroid/content/Context;Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
iconst_0
istore 4
aconst_null
astore 6
aconst_null
astore 5
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L1:
aload 0
astore 5
aload 0
astore 6
L4:
aload 0
aload 1
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
istore 2
L5:
iload 2
ifne L8
iconst_1
istore 3
L9:
iload 3
istore 4
aload 0
ifnull L10
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iload 3
istore 4
L10:
iload 4
ireturn
L8:
iconst_0
istore 3
goto L9
L2:
astore 0
aload 5
astore 6
L6:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L7:
aload 5
ifnull L10
aload 5
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iconst_0
ireturn
L3:
astore 0
aload 6
ifnull L11
aload 6
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L11:
aload 0
athrow
.limit locals 7
.limit stack 2
.end method

.method public static getBindInsertSql(Lcom/product/android/business/login/BindUser;)Ljava/lang/String;
ldc ""
astore 1
aload 0
ifnull L0
ldc "insert into bind_user(uap_uid,oap_uid,joindate,telephone,signature,update_time,is_active,sys_avatar,user_name,work_id,duty,mobile_phone,email,unit_name,unit_shortname,studend_id,depporcass_id,gender,birthday,blood,site,description,fax,addr,post_code,unit_type,is_getall,is_get_extinfo,friend_updatetime) values('%s','%s','%s','%s','%s','%s',%d,%d,'%s','%s','%s','%s','%s','%s','%s','%s','%s',%d,'%s','%s','%s','%s','%s','%s','%s',%d,%d,%d,'%s')"
bipush 29
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/product/android/business/login/BindUser/getUap_uid()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
invokevirtual com/product/android/business/login/BindUser/getJoindate()Ljava/lang/String;
aastore
dup
iconst_3
aload 0
invokevirtual com/product/android/business/login/BindUser/getTelephone()Ljava/lang/String;
aastore
dup
iconst_4
aload 0
invokevirtual com/product/android/business/login/BindUser/getSignature()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_5
aload 0
invokevirtual com/product/android/business/login/BindUser/getUpdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
bipush 6
aload 0
invokevirtual com/product/android/business/login/BindUser/getIsactive()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 7
aload 0
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 8
aload 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 9
aload 0
invokevirtual com/product/android/business/login/BindUser/getWorkid()Ljava/lang/String;
aastore
dup
bipush 10
aload 0
invokevirtual com/product/android/business/login/BindUser/getDuty()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 11
aload 0
invokevirtual com/product/android/business/login/BindUser/getMobilephone()Ljava/lang/String;
aastore
dup
bipush 12
aload 0
invokevirtual com/product/android/business/login/BindUser/getEmail()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 13
aload 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 14
aload 0
invokevirtual com/product/android/business/login/BindUser/getUnitshortname()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 15
aload 0
invokevirtual com/product/android/business/login/BindUser/getStudentid()Ljava/lang/String;
aastore
dup
bipush 16
aload 0
invokevirtual com/product/android/business/login/BindUser/getDeporcassid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 17
aload 0
invokevirtual com/product/android/business/login/BindUser/getGender()Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/parseInt(Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 18
aload 0
invokevirtual com/product/android/business/login/BindUser/getBirthday()Ljava/lang/String;
aastore
dup
bipush 19
aload 0
invokevirtual com/product/android/business/login/BindUser/getBlood()Ljava/lang/String;
aastore
dup
bipush 20
aload 0
invokevirtual com/product/android/business/login/BindUser/getSite()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 21
aload 0
invokevirtual com/product/android/business/login/BindUser/getDescription()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 22
aload 0
invokevirtual com/product/android/business/login/BindUser/getFax()Ljava/lang/String;
aastore
dup
bipush 23
aload 0
invokevirtual com/product/android/business/login/BindUser/getAddr()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 24
aload 0
invokevirtual com/product/android/business/login/BindUser/getPostcode()Ljava/lang/String;
aastore
dup
bipush 25
aload 0
invokevirtual com/product/android/business/login/BindUser/getUnittype()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 26
aload 0
invokevirtual com/product/android/business/login/BindUser/getIsgetall()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 27
aload 0
invokevirtual com/product/android/business/login/BindUser/getIsgetextinfo()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 28
aload 0
invokevirtual com/product/android/business/login/BindUser/getFriend_updatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 6
.end method

.method public static getBindUpadateSql(Lcom/product/android/business/login/BindUser;)Ljava/lang/String;
ldc ""
astore 1
aload 0
ifnull L0
ldc "update bind_user set joindate='%s',telephone='%s',signature='%s',update_time='%s',is_active=%d,sys_avatar=%d,user_name='%s',work_id='%s',duty='%s',mobile_phone='%s',email='%s',unit_name='%s',unit_shortname='%s',studend_id='%s',depporcass_id='%s',gender=%d,birthday='%s',blood='%s',site='%s',description='%s',fax='%s',addr='%s',post_code='%s',unit_type=%d,is_getall=%d,is_get_extinfo=%d,friend_updatetime='%s' where uap_uid='%s' and oap_uid='%s'"
bipush 29
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/product/android/business/login/BindUser/getJoindate()Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/product/android/business/login/BindUser/getTelephone()Ljava/lang/String;
aastore
dup
iconst_2
aload 0
invokevirtual com/product/android/business/login/BindUser/getSignature()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_3
aload 0
invokevirtual com/product/android/business/login/BindUser/getUpdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_4
aload 0
invokevirtual com/product/android/business/login/BindUser/getIsactive()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_5
aload 0
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 6
aload 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 7
aload 0
invokevirtual com/product/android/business/login/BindUser/getWorkid()Ljava/lang/String;
aastore
dup
bipush 8
aload 0
invokevirtual com/product/android/business/login/BindUser/getDuty()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 9
aload 0
invokevirtual com/product/android/business/login/BindUser/getMobilephone()Ljava/lang/String;
aastore
dup
bipush 10
aload 0
invokevirtual com/product/android/business/login/BindUser/getEmail()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 11
aload 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 12
aload 0
invokevirtual com/product/android/business/login/BindUser/getUnitshortname()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 13
aload 0
invokevirtual com/product/android/business/login/BindUser/getStudentid()Ljava/lang/String;
aastore
dup
bipush 14
aload 0
invokevirtual com/product/android/business/login/BindUser/getDeporcassid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 15
aload 0
invokevirtual com/product/android/business/login/BindUser/getGender()Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/parseInt(Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 16
aload 0
invokevirtual com/product/android/business/login/BindUser/getBirthday()Ljava/lang/String;
aastore
dup
bipush 17
aload 0
invokevirtual com/product/android/business/login/BindUser/getBlood()Ljava/lang/String;
aastore
dup
bipush 18
aload 0
invokevirtual com/product/android/business/login/BindUser/getSite()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 19
aload 0
invokevirtual com/product/android/business/login/BindUser/getDescription()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 20
aload 0
invokevirtual com/product/android/business/login/BindUser/getFax()Ljava/lang/String;
aastore
dup
bipush 21
aload 0
invokevirtual com/product/android/business/login/BindUser/getAddr()Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 22
aload 0
invokevirtual com/product/android/business/login/BindUser/getPostcode()Ljava/lang/String;
aastore
dup
bipush 23
aload 0
invokevirtual com/product/android/business/login/BindUser/getUnittype()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 24
aload 0
invokevirtual com/product/android/business/login/BindUser/getIsgetall()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 25
aload 0
invokevirtual com/product/android/business/login/BindUser/getIsgetextinfo()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 26
aload 0
invokevirtual com/product/android/business/login/BindUser/getFriend_updatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
bipush 27
aload 0
invokevirtual com/product/android/business/login/BindUser/getUap_uid()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
bipush 28
aload 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 6
.end method

.method public static getBindUserById(Landroid/content/Context;JJ)Lcom/product/android/business/login/BindUser;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
aconst_null
astore 8
aconst_null
astore 7
aconst_null
astore 10
aconst_null
astore 9
aload 9
astore 5
aload 10
astore 6
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L1:
aload 9
astore 5
aload 0
astore 7
aload 10
astore 6
aload 0
astore 8
L4:
aload 0
ldc "select * from bind_user where oap_uid='%s'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 9
L5:
aload 9
ifnull L12
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L6:
aload 9
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L12
L7:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L8:
aload 9
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getBindUserFromCursor(Landroid/database/Cursor;)Lcom/product/android/business/login/BindUser;
astore 10
L9:
aload 9
ifnull L13
aload 9
invokeinterface android/database/Cursor/close()V 0
L13:
aload 0
ifnull L14
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L14:
aload 10
areturn
L12:
aload 9
ifnull L15
aload 9
invokeinterface android/database/Cursor/close()V 0
L15:
aload 0
ifnull L16
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L16:
aconst_null
areturn
L2:
astore 0
aload 5
astore 6
aload 7
astore 8
L10:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L11:
aload 5
ifnull L17
aload 5
invokeinterface android/database/Cursor/close()V 0
L17:
aload 7
ifnull L16
aload 7
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
goto L16
L3:
astore 0
aload 6
ifnull L18
aload 6
invokeinterface android/database/Cursor/close()V 0
L18:
aload 8
ifnull L19
aload 8
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L19:
aload 0
athrow
.limit locals 11
.limit stack 7
.end method

.method private static getBindUserFromCursor(Landroid/database/Cursor;)Lcom/product/android/business/login/BindUser;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new com/product/android/business/login/BindUser
dup
invokespecial com/product/android/business/login/BindUser/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setId(I)V
aload 1
aload 0
aload 0
ldc "uap_uid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/login/BindUser/setUap_uid(J)V
aload 1
aload 0
aload 0
ldc "oap_uid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/login/BindUser/setUid(J)V
aload 1
aload 0
aload 0
ldc "joindate"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setJoindate(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "telephone"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setTelephone(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setSignature(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "update_time"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/parseLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/login/BindUser/setUpdatetime(J)V
aload 1
aload 0
aload 0
ldc "is_active"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsactive(I)V
aload 1
aload 0
aload 0
ldc "sys_avatar"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setSysavatar(I)V
aload 1
aload 0
aload 0
ldc "user_name"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUsername(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "work_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setWorkid(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "duty"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setDuty(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "mobile_phone"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setMobilephone(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "email"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setEmail(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "unit_name"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "unit_shortname"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitshortname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "studend_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setStudentid(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "depporcass_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/parseInt(Ljava/lang/String;)I
invokevirtual com/product/android/business/login/BindUser/setDeporcassid(I)V
aload 1
aload 0
aload 0
ldc "gender"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setGender(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "birthday"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setBirthday(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "blood"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setBlood(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "site"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setSite(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "description"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setDescription(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "fax"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setFax(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "addr"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setAddr(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "post_code"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setPostcode(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "unit_type"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUnittype(I)V
aload 1
aload 0
aload 0
ldc "is_getall"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsgetall(I)V
aload 1
aload 0
aload 0
ldc "is_get_extinfo"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsgetextinfo(I)V
aload 1
aload 0
aload 0
ldc "friend_updatetime"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/parseLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/login/BindUser/setFriend_updatetime(J)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 1
aload 1
aload 0
aconst_null
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/open(Landroid/content/Context;Ljava/lang/String;)I 2
pop
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getOapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
aconst_null
astore 4
aconst_null
astore 3
aconst_null
astore 6
aconst_null
astore 5
aload 5
astore 1
aload 6
astore 2
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L1:
aload 5
astore 1
aload 0
astore 3
aload 6
astore 2
aload 0
astore 4
L4:
aload 0
ldc "select * from oap_user where is_auto_login=1 and is_current_user=1 order by last_login_time desc"
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 5
L5:
aload 5
ifnull L12
aload 5
astore 1
aload 0
astore 3
aload 5
astore 2
aload 0
astore 4
L6:
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L12
L7:
aload 5
astore 1
aload 0
astore 3
aload 5
astore 2
aload 0
astore 4
L8:
aload 5
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapUserFromCursor(Landroid/database/Cursor;)Lcom/nd/rj/common/login/entity/OapUser;
astore 6
L9:
aload 0
ifnull L13
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L13:
aload 5
ifnull L14
aload 5
invokeinterface android/database/Cursor/close()V 0
L14:
aload 6
areturn
L12:
aload 0
ifnull L15
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L15:
aload 5
ifnull L16
aload 5
invokeinterface android/database/Cursor/close()V 0
L16:
aconst_null
areturn
L2:
astore 0
aload 1
astore 2
aload 3
astore 4
L10:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L11:
aload 3
ifnull L17
aload 3
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L17:
aload 1
ifnull L16
aload 1
invokeinterface android/database/Cursor/close()V 0
goto L16
L3:
astore 0
aload 4
ifnull L18
aload 4
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L18:
aload 2
ifnull L19
aload 2
invokeinterface android/database/Cursor/close()V 0
L19:
aload 0
athrow
.limit locals 7
.limit stack 2
.end method

.method private static getOapUserFromCursor(Landroid/database/Cursor;)Lcom/nd/rj/common/login/entity/OapUser;
iconst_1
istore 2
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new com/nd/rj/common/login/entity/OapUser
dup
invokespecial com/nd/rj/common/login/entity/OapUser/<init>()V
astore 3
aload 3
aload 0
aload 0
ldc "id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/rj/common/login/entity/OapUser/id I
aload 3
aload 0
aload 0
ldc "uap_uid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/rj/common/login/entity/OapUser/uapUid J
aload 3
aload 0
aload 0
ldc "ticket"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "nick_name"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "account"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "blow_fish"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "oap_uid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/rj/common/login/entity/OapUser/oapUid J
aload 3
aload 0
aload 0
ldc "oap_unitid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
aload 3
aload 0
aload 0
ldc "pwd_time"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/OapUser/pwdTime Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "bind_uap_account"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/OapUser/bindUapAccount Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "last_login_time"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
aload 0
aload 0
ldc "is_org_admin"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
iconst_1
if_icmpne L1
iconst_1
istore 1
L2:
aload 3
iload 1
putfield com/nd/rj/common/login/entity/OapUser/isOrgAdmin Z
aload 3
aload 0
aload 0
ldc "type"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/rj/common/login/entity/OapUser/type I
aload 0
aload 0
ldc "is_auto_login"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
iconst_1
if_icmpne L3
iconst_1
istore 1
L4:
aload 3
iload 1
putfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
aload 0
aload 0
ldc "is_save_pwd"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
iconst_1
if_icmpne L5
iconst_1
istore 1
L6:
aload 3
iload 1
putfield com/nd/rj/common/login/entity/OapUser/isSavePwd Z
aload 0
aload 0
ldc "is_current_user"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
iconst_1
if_icmpne L7
iload 2
istore 1
L8:
aload 3
iload 1
putfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
aload 3
aload 0
aload 0
ldc "login_type"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/rj/common/login/entity/OapUser/loginType I
aload 3
areturn
L1:
iconst_0
istore 1
goto L2
L3:
iconst_0
istore 1
goto L4
L5:
iconst_0
istore 1
goto L6
L7:
iconst_0
istore 1
goto L8
.limit locals 4
.limit stack 4
.end method

.method public static getSaveSql(Lcom/nd/rj/common/login/entity/OapUser;)Ljava/lang/String;
iconst_1
istore 4
ldc ""
astore 11
aload 0
ifnull L0
aload 0
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
lstore 7
aload 0
getfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
astore 11
aload 0
getfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
astore 12
aload 0
getfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
astore 13
aload 0
getfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
astore 14
aload 0
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
lstore 9
aload 0
getfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
istore 5
aload 0
getfield com/nd/rj/common/login/entity/OapUser/pwdTime Ljava/lang/String;
astore 15
aload 0
getfield com/nd/rj/common/login/entity/OapUser/bindUapAccount Ljava/lang/String;
astore 16
aload 0
getfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
astore 17
aload 0
getfield com/nd/rj/common/login/entity/OapUser/isOrgAdmin Z
ifeq L1
iconst_1
istore 1
L2:
aload 0
getfield com/nd/rj/common/login/entity/OapUser/type I
istore 6
aload 0
getfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
ifeq L3
iconst_1
istore 2
L4:
aload 0
getfield com/nd/rj/common/login/entity/OapUser/isSavePwd Z
ifeq L5
iconst_1
istore 3
L6:
aload 0
getfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
ifeq L7
L8:
ldc "insert into oap_user(uap_uid,ticket,nick_name,account,blow_fish,oap_uid,oap_unitid,pwd_time,bind_uap_account,last_login_time,is_org_admin,type,is_auto_login,is_save_pwd,is_current_user,login_type) values('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s',%d,%d,%d,%d,%d,%d)"
bipush 16
anewarray java/lang/Object
dup
iconst_0
lload 7
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
aload 11
aastore
dup
iconst_2
aload 12
aastore
dup
iconst_3
aload 13
aastore
dup
iconst_4
aload 14
aastore
dup
iconst_5
lload 9
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
bipush 6
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 7
aload 15
aastore
dup
bipush 8
aload 16
aastore
dup
bipush 9
aload 17
aastore
dup
bipush 10
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 11
iload 6
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 12
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 13
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 14
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 15
aload 0
getfield com/nd/rj/common/login/entity/OapUser/loginType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 11
L0:
aload 11
areturn
L1:
iconst_0
istore 1
goto L2
L3:
iconst_0
istore 2
goto L4
L5:
iconst_0
istore 3
goto L6
L7:
iconst_0
istore 4
goto L8
.limit locals 18
.limit stack 6
.end method

.method public static getUapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/UapUser;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
aconst_null
astore 4
aconst_null
astore 3
aconst_null
astore 6
aconst_null
astore 5
aload 5
astore 1
aload 6
astore 2
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L1:
aload 5
astore 1
aload 0
astore 3
aload 6
astore 2
aload 0
astore 4
L4:
aload 0
ldc "select * from uap_user where is_auto_login=1 and is_current_user=1"
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 5
L5:
aload 5
ifnull L12
aload 5
astore 1
aload 0
astore 3
aload 5
astore 2
aload 0
astore 4
L6:
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L12
L7:
aload 5
astore 1
aload 0
astore 3
aload 5
astore 2
aload 0
astore 4
L8:
aload 5
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUapUserFromCursor(Landroid/database/Cursor;)Lcom/nd/rj/common/login/entity/UapUser;
astore 6
L9:
aload 5
ifnull L13
aload 5
invokeinterface android/database/Cursor/close()V 0
L13:
aload 0
ifnull L14
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L14:
aload 6
areturn
L12:
aload 5
ifnull L15
aload 5
invokeinterface android/database/Cursor/close()V 0
L15:
aload 0
ifnull L16
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L16:
aconst_null
areturn
L2:
astore 0
aload 1
astore 2
aload 3
astore 4
L10:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L11:
aload 1
ifnull L17
aload 1
invokeinterface android/database/Cursor/close()V 0
L17:
aload 3
ifnull L16
aload 3
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
goto L16
L3:
astore 0
aload 2
ifnull L18
aload 2
invokeinterface android/database/Cursor/close()V 0
L18:
aload 4
ifnull L19
aload 4
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L19:
aload 0
athrow
.limit locals 7
.limit stack 2
.end method

.method private static getUapInsertSql(Lcom/nd/rj/common/login/entity/UapUser;)Ljava/lang/String;
iconst_1
istore 3
ldc ""
astore 6
aload 0
ifnull L0
aload 0
getfield com/nd/rj/common/login/entity/UapUser/uid J
lstore 4
aload 0
getfield com/nd/rj/common/login/entity/UapUser/ticket Ljava/lang/String;
astore 6
aload 0
getfield com/nd/rj/common/login/entity/UapUser/nickName Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
astore 7
aload 0
getfield com/nd/rj/common/login/entity/UapUser/account Ljava/lang/String;
astore 8
aload 0
getfield com/nd/rj/common/login/entity/UapUser/blowFish Ljava/lang/String;
astore 9
aload 0
getfield com/nd/rj/common/login/entity/UapUser/lastLoginTime Ljava/lang/String;
astore 10
aload 0
getfield com/nd/rj/common/login/entity/UapUser/isAutoLogin Z
ifeq L1
iconst_1
istore 1
L2:
aload 0
getfield com/nd/rj/common/login/entity/UapUser/isSavePwd Z
ifeq L3
iconst_1
istore 2
L4:
aload 0
getfield com/nd/rj/common/login/entity/UapUser/isCurrentUser Z
ifeq L5
L6:
ldc "insert into uap_user(uid,ticket,nick_name,account,blow_fish,last_login_time,is_auto_login,is_save_pwd,is_current_user) values('%s','%s','%s','%s','%s','%s',%d,%d,%d)"
bipush 9
anewarray java/lang/Object
dup
iconst_0
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
aload 6
aastore
dup
iconst_2
aload 7
aastore
dup
iconst_3
aload 8
aastore
dup
iconst_4
aload 9
aastore
dup
iconst_5
aload 10
aastore
dup
bipush 6
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 7
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 8
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 6
L0:
aload 6
areturn
L1:
iconst_0
istore 1
goto L2
L3:
iconst_0
istore 2
goto L4
L5:
iconst_0
istore 3
goto L6
.limit locals 11
.limit stack 6
.end method

.method private static getUapUpadateSql(Lcom/nd/rj/common/login/entity/UapUser;)Ljava/lang/String;
iconst_1
istore 3
ldc ""
astore 4
aload 0
ifnull L0
aload 0
getfield com/nd/rj/common/login/entity/UapUser/ticket Ljava/lang/String;
astore 4
aload 0
getfield com/nd/rj/common/login/entity/UapUser/nickName Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 0
getfield com/nd/rj/common/login/entity/UapUser/account Ljava/lang/String;
astore 6
aload 0
getfield com/nd/rj/common/login/entity/UapUser/blowFish Ljava/lang/String;
astore 7
aload 0
getfield com/nd/rj/common/login/entity/UapUser/lastLoginTime Ljava/lang/String;
astore 8
aload 0
getfield com/nd/rj/common/login/entity/UapUser/isSavePwd Z
ifeq L1
iconst_1
istore 1
L2:
aload 0
getfield com/nd/rj/common/login/entity/UapUser/isAutoLogin Z
ifeq L3
iconst_1
istore 2
L4:
aload 0
getfield com/nd/rj/common/login/entity/UapUser/isCurrentUser Z
ifeq L5
L6:
ldc "update uap_user set ticket='%s',nick_name='%s',account='%s',blow_fish='%s',last_login_time='%s',is_save_pwd=%d,is_auto_login=%d,is_current_user=%d where uid='%s'"
bipush 9
anewarray java/lang/Object
dup
iconst_0
aload 4
aastore
dup
iconst_1
aload 5
aastore
dup
iconst_2
aload 6
aastore
dup
iconst_3
aload 7
aastore
dup
iconst_4
aload 8
aastore
dup
iconst_5
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 6
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 7
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 8
aload 0
getfield com/nd/rj/common/login/entity/UapUser/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
L0:
aload 4
areturn
L1:
iconst_0
istore 1
goto L2
L3:
iconst_0
istore 2
goto L4
L5:
iconst_0
istore 3
goto L6
.limit locals 9
.limit stack 6
.end method

.method private static getUapUserFromCursor(Landroid/database/Cursor;)Lcom/nd/rj/common/login/entity/UapUser;
iconst_1
istore 2
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new com/nd/rj/common/login/entity/UapUser
dup
invokespecial com/nd/rj/common/login/entity/UapUser/<init>()V
astore 3
aload 3
aload 0
aload 0
ldc "id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/rj/common/login/entity/UapUser/id I
aload 3
aload 0
aload 0
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/rj/common/login/entity/UapUser/uid J
aload 3
aload 0
aload 0
ldc "ticket"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/UapUser/ticket Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "nick_name"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/UapUser/nickName Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "account"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/UapUser/account Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "blow_fish"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/UapUser/blowFish Ljava/lang/String;
aload 3
aload 0
aload 0
ldc "last_login_time"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/UapUser/lastLoginTime Ljava/lang/String;
aload 0
aload 0
ldc "is_auto_login"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
iconst_1
if_icmpne L1
iconst_1
istore 1
L2:
aload 3
iload 1
putfield com/nd/rj/common/login/entity/UapUser/isAutoLogin Z
aload 0
aload 0
ldc "is_save_pwd"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
iconst_1
if_icmpne L3
iconst_1
istore 1
L4:
aload 3
iload 1
putfield com/nd/rj/common/login/entity/UapUser/isSavePwd Z
aload 0
aload 0
ldc "is_current_user"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
iconst_1
if_icmpne L5
iload 2
istore 1
L6:
aload 3
iload 1
putfield com/nd/rj/common/login/entity/UapUser/isCurrentUser Z
aload 3
areturn
L1:
iconst_0
istore 1
goto L2
L3:
iconst_0
istore 1
goto L4
L5:
iconst_0
istore 1
goto L6
.limit locals 4
.limit stack 4
.end method

.method public static getUpdateSql(Lcom/nd/rj/common/login/entity/OapUser;)Ljava/lang/String;
iconst_1
istore 3
ldc ""
astore 4
aload 0
ifnull L0
aload 0
getfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
astore 4
aload 0
getfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 0
getfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
astore 6
aload 0
getfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
astore 7
aload 0
getfield com/nd/rj/common/login/entity/OapUser/pwdTime Ljava/lang/String;
astore 8
aload 0
getfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
astore 9
aload 0
getfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
ifeq L1
iconst_1
istore 1
L2:
aload 0
getfield com/nd/rj/common/login/entity/OapUser/isSavePwd Z
ifeq L3
iconst_1
istore 2
L4:
aload 0
getfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
ifeq L5
L6:
ldc "update oap_user set ticket='%s',nick_name='%s',account='%s',blow_fish='%s',pwd_time='%s',last_login_time='%s',is_auto_login=%d,is_save_pwd=%d,is_current_user=%d  where uap_uid='%s' and oap_uid='%s'"
bipush 11
anewarray java/lang/Object
dup
iconst_0
aload 4
aastore
dup
iconst_1
aload 5
aastore
dup
iconst_2
aload 6
aastore
dup
iconst_3
aload 7
aastore
dup
iconst_4
aload 8
aastore
dup
iconst_5
aload 9
aastore
dup
bipush 6
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 7
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 8
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
bipush 9
aload 0
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
bipush 10
aload 0
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
L0:
aload 4
areturn
L1:
iconst_0
istore 1
goto L2
L3:
iconst_0
istore 2
goto L4
L5:
iconst_0
istore 3
goto L6
.limit locals 10
.limit stack 6
.end method

.method public static getUserEtras(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
aconst_null
astore 6
aconst_null
astore 4
aconst_null
astore 10
aconst_null
astore 9
ldc ""
astore 7
aload 9
astore 3
aload 10
astore 5
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 8
L1:
aload 9
astore 3
aload 8
astore 4
aload 10
astore 5
aload 8
astore 6
L4:
aload 8
ldc "select * from user_dictionary where id=%d and attr_id='%s'"
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 2
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 2
L5:
aload 7
astore 0
aload 2
ifnull L9
aload 7
astore 0
aload 2
astore 3
aload 8
astore 4
aload 2
astore 5
aload 8
astore 6
L6:
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L9
L7:
aload 2
astore 3
aload 8
astore 4
aload 2
astore 5
aload 8
astore 6
L8:
aload 2
aload 2
ldc "attr_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 0
L9:
aload 2
ifnull L12
aload 2
invokeinterface android/database/Cursor/close()V 0
L12:
aload 0
astore 7
aload 8
ifnull L13
aload 8
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
aload 0
astore 7
L13:
aload 7
areturn
L2:
astore 0
aload 3
astore 5
aload 4
astore 6
L10:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L11:
aload 3
ifnull L14
aload 3
invokeinterface android/database/Cursor/close()V 0
L14:
aload 4
ifnull L13
aload 4
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
ldc ""
areturn
L3:
astore 0
aload 5
ifnull L15
aload 5
invokeinterface android/database/Cursor/close()V 0
L15:
aload 6
ifnull L16
aload 6
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L16:
aload 0
athrow
.limit locals 11
.limit stack 6
.end method

.method private static oapDelByCount(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/util/db/IDataBaseRef;Landroid/database/Cursor;)Z
iconst_0
istore 5
aload 2
ldc "select * from oap_user where account='%s'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 1
iload 5
istore 4
aload 1
ifnull L0
iload 5
istore 4
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapUserFromCursor(Landroid/database/Cursor;)Lcom/nd/rj/common/login/entity/OapUser;
astore 1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delete from oap_user  where id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/nd/rj/common/login/entity/OapUser/id I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
pop
aload 0
ldc "delete from bind_user  where oap_uid='%s'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
istore 4
L0:
iload 4
ireturn
.limit locals 6
.limit stack 7
.end method

.method private static oapDelByOapUid(Landroid/content/Context;JLcom/nd/rj/common/util/db/IDataBaseRef;Landroid/database/Cursor;)Z
iconst_0
istore 6
aload 3
ldc "select * from oap_user where oap_uid='%s'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 3
iload 6
istore 5
aload 3
ifnull L0
iload 6
istore 5
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 3
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapUserFromCursor(Landroid/database/Cursor;)Lcom/nd/rj/common/login/entity/OapUser;
astore 3
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delete from oap_user  where id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield com/nd/rj/common/login/entity/OapUser/id I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
pop
aload 0
ldc "delete from bind_user  where oap_uid='%s'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
istore 5
L0:
iload 5
ireturn
.limit locals 7
.limit stack 7
.end method

.method private static oapDelByUapUid(Landroid/content/Context;JLcom/nd/rj/common/util/db/IDataBaseRef;Landroid/database/Cursor;)Z
iconst_0
istore 6
aload 3
ldc "select * from oap_user where uap_uid='%s'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 3
iload 6
istore 5
aload 3
ifnull L0
iload 6
istore 5
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 3
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapUserFromCursor(Landroid/database/Cursor;)Lcom/nd/rj/common/login/entity/OapUser;
astore 3
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delete from oap_user  where id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield com/nd/rj/common/login/entity/OapUser/id I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
pop
aload 0
ldc "delete from bind_user  where oap_uid='%s'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
istore 5
L0:
iload 5
ireturn
.limit locals 7
.limit stack 7
.end method

.method public static qryAllOapUser(Landroid/content/Context;)Ljava/util/List;
.signature "(Landroid/content/Context;)Ljava/util/List<Lcom/nd/rj/common/login/entity/OapUser;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aconst_null
astore 4
aconst_null
astore 3
aconst_null
astore 6
aconst_null
astore 5
aload 5
astore 1
aload 6
astore 2
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L1:
aload 5
astore 1
aload 0
astore 3
aload 6
astore 2
aload 0
astore 4
L4:
aload 0
ldc "select * from oap_user"
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 5
L5:
aload 5
ifnull L12
L13:
aload 5
astore 1
aload 0
astore 3
aload 5
astore 2
aload 0
astore 4
L6:
aload 5
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L12
L7:
aload 5
astore 1
aload 0
astore 3
aload 5
astore 2
aload 0
astore 4
L8:
aload 7
aload 5
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapUserFromCursor(Landroid/database/Cursor;)Lcom/nd/rj/common/login/entity/OapUser;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L9:
goto L13
L2:
astore 0
aload 1
astore 2
aload 3
astore 4
L10:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L11:
aload 3
ifnull L14
aload 3
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L14:
aload 1
ifnull L15
aload 1
invokeinterface android/database/Cursor/close()V 0
L15:
aload 7
areturn
L12:
aload 0
ifnull L16
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L16:
aload 5
ifnull L15
aload 5
invokeinterface android/database/Cursor/close()V 0
aload 7
areturn
L3:
astore 0
aload 4
ifnull L17
aload 4
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L17:
aload 2
ifnull L18
aload 2
invokeinterface android/database/Cursor/close()V 0
L18:
aload 0
athrow
.limit locals 8
.limit stack 2
.end method

.method public static saveBindUser(Landroid/content/Context;Lcom/product/android/business/login/BindUser;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch all from L14 to L15 using L3
iconst_0
istore 4
aconst_null
astore 8
aconst_null
astore 7
aconst_null
astore 10
aconst_null
astore 9
aload 9
astore 5
aload 10
astore 6
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L1:
aload 9
astore 5
aload 0
astore 7
aload 10
astore 6
aload 0
astore 8
L4:
aload 0
ldc "select * from bind_user where oap_uid='%s' and uap_uid='%s'"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
aload 1
invokevirtual com/product/android/business/login/BindUser/getUap_uid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 9
L5:
aload 9
ifnull L16
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L6:
aload 9
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L16
L7:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L8:
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getBindUpadateSql(Lcom/product/android/business/login/BindUser;)Ljava/lang/String;
astore 1
L9:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L10:
aload 0
aload 1
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
istore 2
L11:
iload 2
ifne L17
iconst_1
istore 3
L18:
aload 9
ifnull L19
aload 9
invokeinterface android/database/Cursor/close()V 0
L19:
iload 3
istore 4
aload 0
ifnull L20
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iload 3
istore 4
L20:
iload 4
ireturn
L16:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L12:
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getBindInsertSql(Lcom/product/android/business/login/BindUser;)Ljava/lang/String;
astore 1
L13:
goto L9
L17:
iconst_0
istore 3
goto L18
L2:
astore 0
aload 5
astore 6
aload 7
astore 8
L14:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L15:
aload 5
ifnull L21
aload 5
invokeinterface android/database/Cursor/close()V 0
L21:
aload 7
ifnull L20
aload 7
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iconst_0
ireturn
L3:
astore 0
aload 6
ifnull L22
aload 6
invokeinterface android/database/Cursor/close()V 0
L22:
aload 8
ifnull L23
aload 8
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L23:
aload 0
athrow
.limit locals 11
.limit stack 7
.end method

.method public static saveOapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/OapUser;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch all from L14 to L15 using L3
iconst_0
istore 4
aconst_null
astore 8
aconst_null
astore 7
aconst_null
astore 10
aconst_null
astore 9
aload 9
astore 5
aload 10
astore 6
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L1:
aload 9
astore 5
aload 0
astore 7
aload 10
astore 6
aload 0
astore 8
L4:
aload 0
ldc "select * from oap_user where uap_uid='%s' and oap_uid='%s'"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
aload 1
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 9
L5:
aload 9
ifnull L16
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L6:
aload 9
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L16
L7:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L8:
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUpdateSql(Lcom/nd/rj/common/login/entity/OapUser;)Ljava/lang/String;
astore 1
L9:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L10:
aload 0
aload 1
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
istore 2
L11:
iload 2
ifne L17
iconst_1
istore 3
L18:
aload 9
ifnull L19
aload 9
invokeinterface android/database/Cursor/close()V 0
L19:
iload 3
istore 4
aload 0
ifnull L20
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iload 3
istore 4
L20:
iload 4
ireturn
L16:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L12:
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getSaveSql(Lcom/nd/rj/common/login/entity/OapUser;)Ljava/lang/String;
astore 1
L13:
goto L9
L17:
iconst_0
istore 3
goto L18
L2:
astore 0
aload 5
astore 6
aload 7
astore 8
L14:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L15:
aload 5
ifnull L21
aload 5
invokeinterface android/database/Cursor/close()V 0
L21:
aload 7
ifnull L20
aload 7
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iconst_0
ireturn
L3:
astore 0
aload 6
ifnull L22
aload 6
invokeinterface android/database/Cursor/close()V 0
L22:
aload 8
ifnull L23
aload 8
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L23:
aload 0
athrow
.limit locals 11
.limit stack 7
.end method

.method public static saveUapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/UapUser;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch all from L14 to L15 using L3
iconst_0
istore 4
aconst_null
astore 8
aconst_null
astore 7
aconst_null
astore 10
aconst_null
astore 9
aload 9
astore 5
aload 10
astore 6
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L1:
aload 9
astore 5
aload 0
astore 7
aload 10
astore 6
aload 0
astore 8
L4:
aload 0
ldc "select * from uap_user where uid='%s'"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
getfield com/nd/rj/common/login/entity/UapUser/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 9
L5:
aload 9
ifnull L16
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L6:
aload 9
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L16
L7:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L8:
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUapUpadateSql(Lcom/nd/rj/common/login/entity/UapUser;)Ljava/lang/String;
astore 1
L9:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L10:
aload 0
aload 1
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
istore 2
L11:
iload 2
ifne L17
iconst_1
istore 3
L18:
aload 9
ifnull L19
aload 9
invokeinterface android/database/Cursor/close()V 0
L19:
iload 3
istore 4
aload 0
ifnull L20
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iload 3
istore 4
L20:
iload 4
ireturn
L16:
aload 9
astore 5
aload 0
astore 7
aload 9
astore 6
aload 0
astore 8
L12:
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUapInsertSql(Lcom/nd/rj/common/login/entity/UapUser;)Ljava/lang/String;
astore 1
L13:
goto L9
L17:
iconst_0
istore 3
goto L18
L2:
astore 0
aload 5
astore 6
aload 7
astore 8
L14:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L15:
aload 5
ifnull L21
aload 5
invokeinterface android/database/Cursor/close()V 0
L21:
aload 7
ifnull L20
aload 7
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iconst_0
ireturn
L3:
astore 0
aload 6
ifnull L22
aload 6
invokeinterface android/database/Cursor/close()V 0
L22:
aload 8
ifnull L23
aload 8
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L23:
aload 0
athrow
.limit locals 11
.limit stack 7
.end method

.method public static saveUserEtras(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch all from L14 to L15 using L3
iconst_0
istore 5
aconst_null
astore 9
aconst_null
astore 8
aconst_null
astore 11
aconst_null
astore 10
aload 10
astore 6
aload 11
astore 7
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getDb(Landroid/content/Context;)Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L1:
aload 10
astore 6
aload 0
astore 8
aload 11
astore 7
aload 0
astore 9
L4:
aload 0
ldc "select * from user_dictionary where id=%d and attr_id='%s'"
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 2
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 10
L5:
aload 10
ifnull L16
aload 10
astore 6
aload 0
astore 8
aload 10
astore 7
aload 0
astore 9
L6:
aload 10
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L16
L7:
aload 10
astore 6
aload 0
astore 8
aload 10
astore 7
aload 0
astore 9
L8:
ldc "update user_dictionary set value='%s' where id=%d and attr_id='%s'"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 3
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
aload 2
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
L9:
aload 10
astore 6
aload 0
astore 8
aload 10
astore 7
aload 0
astore 9
L10:
aload 0
aload 2
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
istore 1
L11:
iload 1
ifne L17
iconst_1
istore 4
L18:
aload 10
ifnull L19
aload 10
invokeinterface android/database/Cursor/close()V 0
L19:
iload 4
istore 5
aload 0
ifnull L20
aload 0
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iload 4
istore 5
L20:
iload 5
ireturn
L16:
aload 10
astore 6
aload 0
astore 8
aload 10
astore 7
aload 0
astore 9
L12:
ldc "insert into user_dictionary(id,attr_id,value) values(%d,'%s','%s')"
iconst_3
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 2
aastore
dup
iconst_2
aload 3
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
L13:
goto L9
L17:
iconst_0
istore 4
goto L18
L2:
astore 0
aload 6
astore 7
aload 8
astore 9
L14:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L15:
aload 6
ifnull L21
aload 6
invokeinterface android/database/Cursor/close()V 0
L21:
aload 8
ifnull L20
aload 8
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
iconst_0
ireturn
L3:
astore 0
aload 7
ifnull L22
aload 7
invokeinterface android/database/Cursor/close()V 0
L22:
aload 9
ifnull L23
aload 9
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/close()V 0
L23:
aload 0
athrow
.limit locals 12
.limit stack 6
.end method

.method public static updateOapLoginStatus(Landroid/content/Context;JJ)Z
aload 0
ldc "update oap_user set is_auto_login=%d,is_current_user=%d where uap_uid<>'%s' or oap_uid<>'%s'"
iconst_4
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_3
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
ireturn
.limit locals 5
.limit stack 7
.end method

.method public static updateOapNickName(Landroid/content/Context;Ljava/lang/String;JJ)Z
aload 0
ldc "update oap_user set nick_name='%s' where uap_uid='%s' and oap_uid='%s'"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
ireturn
.limit locals 6
.limit stack 7
.end method

.method public static updateUapLoginStatus(Landroid/content/Context;J)Z
aload 0
ldc "update uap_user set is_auto_login=%d,is_current_user=%d where uid!='%s'"
iconst_3
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
ireturn
.limit locals 3
.limit stack 7
.end method

.method public static updateUapNickName(Landroid/content/Context;Ljava/lang/String;J)Z
aload 0
ldc "update uap_user set nick_name='%s' where uid='%s'"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
invokestatic com/nd/rj/common/util/db/BaseDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/exeSql(Landroid/content/Context;Ljava/lang/String;)Z
ireturn
.limit locals 4
.limit stack 7
.end method
