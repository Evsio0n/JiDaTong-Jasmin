.bytecode 50.0
.class public synchronized com/product/android/business/login/BindUser
.super java/lang/Object
.implements java/io/Serializable

.field public static final 'DATA_COMPLETE' I = 0


.field public static final 'PARENT' I = 3


.field public static final 'STAFF' I = 1


.field public static final 'STUDENT' I = 2


.field public static final 'UNIT_TYPE_COM' I = 0


.field public static final 'UNIT_TYPE_EDU' I = 1


.field private static final 'serialVersionUID' J = 1L


.field protected 'addr' Ljava/lang/String;

.field protected 'birthday' Ljava/lang/String;

.field protected 'blood' Ljava/lang/String;

.field protected 'deporcassid' I

.field protected 'description' Ljava/lang/String;

.field protected 'duty' Ljava/lang/String;

.field protected 'email' Ljava/lang/String;

.field protected 'fax' Ljava/lang/String;

.field protected 'friend_updatetime' J

.field protected 'gender' Ljava/lang/String;

.field protected 'id' I

.field protected 'isactive' I

.field protected 'isadmin' I

.field protected 'isgetall' I

.field protected 'isgetextinfo' I

.field protected 'joindate' Ljava/lang/String;

.field protected 'mobilephone' Ljava/lang/String;

.field protected 'nickname' Ljava/lang/String;

.field protected 'postcode' Ljava/lang/String;

.field private 'receivegroupmsg' I

.field protected 'signature' Ljava/lang/String;

.field protected 'site' Ljava/lang/String;

.field protected 'studentid' Ljava/lang/String;

.field protected 'sysavatar' I

.field private 'tag' Z

.field protected 'telephone' Ljava/lang/String;

.field protected 'type' I

.field protected 'uap_uid' J

.field protected 'uid' J

.field protected 'unitcode' Ljava/lang/String;

.field protected 'unitid' I

.field protected 'unitname' Ljava/lang/String;

.field protected 'unitshortname' Ljava/lang/String;

.field protected 'unittype' I

.field protected 'updatetime' J

.field protected 'username' Ljava/lang/String;

.field protected 'workid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/product/android/business/login/BindUser/isgetall I
aload 0
iconst_0
putfield com/product/android/business/login/BindUser/receivegroupmsg I
aload 0
ldc ""
putfield com/product/android/business/login/BindUser/birthday Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/BindUser/gender Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Lcom/product/android/commonInterface/contact/OapUser;)V
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/product/android/business/login/BindUser/isgetall I
aload 0
iconst_0
putfield com/product/android/business/login/BindUser/receivegroupmsg I
L0:
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
putfield com/product/android/business/login/BindUser/uid J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUap_uid()J
putfield com/product/android/business/login/BindUser/uap_uid J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getNickname()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/nickname Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getJoindate()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/joindate Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getTelephone()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/telephone Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/signature Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUpdatetime()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
putfield com/product/android/business/login/BindUser/updatetime J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
putfield com/product/android/business/login/BindUser/isactive I
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
putfield com/product/android/business/login/BindUser/sysavatar I
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/username Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
putfield com/product/android/business/login/BindUser/type I
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getWorkid()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/workid Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getDuty()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/duty Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getMobilehone()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/mobilephone Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getEmail()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/email Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUnitid()I
putfield com/product/android/business/login/BindUser/unitid I
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUnitName()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/unitname Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getStudentid()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/studentid Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/gender Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/birthday Ljava/lang/String;
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/NumberFormatException/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/product/android/business/login/BindUser/isgetall I
aload 0
iconst_0
putfield com/product/android/business/login/BindUser/receivegroupmsg I
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/business/login/BindUser/uid J
aload 0
aload 1
ldc "uap_uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/business/login/BindUser/uap_uid J
aload 0
aload 1
ldc "nickname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/nickname Ljava/lang/String;
aload 0
aload 1
ldc "joindate"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/joindate Ljava/lang/String;
aload 0
aload 1
ldc "telephone"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/telephone Ljava/lang/String;
aload 0
aload 1
ldc "signature"
invokestatic com/common/android/utils/JSONUtils/getFilterString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/signature Ljava/lang/String;
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
i2l
putfield com/product/android/business/login/BindUser/updatetime J
aload 0
aload 1
ldc "isactive"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/business/login/BindUser/isactive I
aload 0
aload 1
ldc "sysavatar"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/business/login/BindUser/sysavatar I
aload 0
aload 1
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/username Ljava/lang/String;
aload 0
aload 1
ldc "type"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/business/login/BindUser/type I
aload 0
aload 1
ldc "workid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/workid Ljava/lang/String;
aload 0
aload 1
ldc "duty"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/duty Ljava/lang/String;
aload 0
aload 1
ldc "mobilephone"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/mobilephone Ljava/lang/String;
aload 0
aload 1
ldc "email"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/email Ljava/lang/String;
aload 0
aload 1
ldc "unitid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/business/login/BindUser/unitid I
aload 0
aload 1
ldc "unitname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/unitname Ljava/lang/String;
aload 0
aload 1
ldc "unitshortname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/unitshortname Ljava/lang/String;
aload 0
aload 1
ldc "studentid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/studentid Ljava/lang/String;
aload 0
aload 1
ldc "gender"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/gender Ljava/lang/String;
aload 0
aload 1
ldc "birthday"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/birthday Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public getAddr()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/addr Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAge()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/birthday Ljava/lang/String;
invokestatic com/product/android/utils/TimeUtils/getAgeByBirthday(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBirthday()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/birthday Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBlood()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/blood Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDeporcassid()I
aload 0
getfield com/product/android/business/login/BindUser/deporcassid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDescription()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/description Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDuty()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/duty Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEmail()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/email Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFax()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/fax Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFriend_updatetime()J
aload 0
getfield com/product/android/business/login/BindUser/friend_updatetime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getGender()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/gender Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()I
aload 0
getfield com/product/android/business/login/BindUser/id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsactive()I
aload 0
getfield com/product/android/business/login/BindUser/isactive I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsadmin()I
aload 0
getfield com/product/android/business/login/BindUser/isadmin I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsgetall()I
aload 0
getfield com/product/android/business/login/BindUser/isgetall I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsgetextinfo()I
aload 0
getfield com/product/android/business/login/BindUser/isgetextinfo I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getJoindate()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/joindate Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMobilephone()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/mobilephone Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNDUap_uid()J
aload 0
getfield com/product/android/business/login/BindUser/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getNickname()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/nickname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPostcode()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/postcode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReceivegroupmsg()I
aload 0
getfield com/product/android/business/login/BindUser/receivegroupmsg I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSignature()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/signature Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSite()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/site Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStudentid()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/studentid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSysavatar()I
aload 0
getfield com/product/android/business/login/BindUser/sysavatar I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTelephone()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/telephone Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/product/android/business/login/BindUser/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUap_uid()J
aload 0
getfield com/product/android/business/login/BindUser/uap_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUid()J
aload 0
getfield com/product/android/business/login/BindUser/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitcode()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/unitcode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitid()I
aload 0
getfield com/product/android/business/login/BindUser/unitid I
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
putfield com/product/android/business/login/BindUser/unitid I
L0:
aload 0
getfield com/product/android/business/login/BindUser/unitid I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitname()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/unitname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitshortname()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/unitshortname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnittype()I
aload 0
getfield com/product/android/business/login/BindUser/unittype I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUpdatetime()J
aload 0
getfield com/product/android/business/login/BindUser/updatetime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUsername()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/username Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWorkid()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/BindUser/workid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initUserBybindlistJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/business/login/BindUser/uid J
aload 0
aload 1
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/username Ljava/lang/String;
aload 0
aload 1
ldc "type"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/business/login/BindUser/type I
aload 0
aload 1
ldc "workid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/workid Ljava/lang/String;
aload 0
aload 1
ldc "studentid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/studentid Ljava/lang/String;
aload 0
aload 1
ldc "duty"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/duty Ljava/lang/String;
aload 0
aload 1
ldc "mobilephone"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/mobilephone Ljava/lang/String;
aload 0
aload 1
ldc "email"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/email Ljava/lang/String;
aload 0
aload 1
ldc "sysavatar"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/business/login/BindUser/sysavatar I
aload 0
aload 1
ldc "unitid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/business/login/BindUser/unitid I
aload 0
aload 1
ldc "unitname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/unitname Ljava/lang/String;
aload 0
aload 1
ldc "unittype"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/business/login/BindUser/unittype I
return
.limit locals 2
.limit stack 3
.end method

.method public isTag()Z
aload 0
getfield com/product/android/business/login/BindUser/tag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAddr(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/addr Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setBirthday(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/birthday Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setBlood(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/blood Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDeporcassid(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/deporcassid I
return
.limit locals 2
.limit stack 2
.end method

.method public setDescription(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/description Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDuty(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/duty Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setEmail(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/email Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFax(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/fax Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFriend_updatetime(J)V
aload 0
lload 1
putfield com/product/android/business/login/BindUser/friend_updatetime J
return
.limit locals 3
.limit stack 3
.end method

.method public setGender(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/gender Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/id I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsactive(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/isactive I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsadmin(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/isadmin I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsgetall(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/isgetall I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsgetextinfo(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/isgetextinfo I
return
.limit locals 2
.limit stack 2
.end method

.method public setJoindate(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/joindate Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "gender"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/gender Ljava/lang/String;
aload 0
aload 1
ldc "birthday"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/birthday Ljava/lang/String;
aload 0
aload 1
ldc "blood"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/blood Ljava/lang/String;
aload 0
aload 1
ldc "site"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/site Ljava/lang/String;
aload 0
aload 1
ldc "description"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/description Ljava/lang/String;
aload 0
aload 1
ldc "fax"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/fax Ljava/lang/String;
aload 0
aload 1
ldc "addr"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/addr Ljava/lang/String;
aload 0
aload 1
ldc "postcode"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/business/login/BindUser/postcode Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public setJsonUpdatetime(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/business/login/BindUser/updatetime J
aload 0
aload 1
ldc "friend_updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/business/login/BindUser/friend_updatetime J
return
.limit locals 2
.limit stack 3
.end method

.method public setMobilephone(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/mobilephone Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNickname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/nickname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPostcode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/postcode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setReceivegroupmsg(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/receivegroupmsg I
return
.limit locals 2
.limit stack 2
.end method

.method public setSignature(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/signature Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSite(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/site Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setStudentid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/studentid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSysavatar(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/sysavatar I
return
.limit locals 2
.limit stack 2
.end method

.method public setTag(Z)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/tag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setTelephone(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/telephone Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/type I
return
.limit locals 2
.limit stack 2
.end method

.method public setUap_uid(I)V
aload 0
iload 1
i2l
putfield com/product/android/business/login/BindUser/uap_uid J
return
.limit locals 2
.limit stack 3
.end method

.method public setUap_uid(J)V
aload 0
lload 1
putfield com/product/android/business/login/BindUser/uap_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/business/login/BindUser/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUnitcode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/unitcode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitid(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/unitid I
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/unitname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitshortname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/unitshortname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUnittype(I)V
aload 0
iload 1
putfield com/product/android/business/login/BindUser/unittype I
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdatetime(J)V
aload 0
lload 1
putfield com/product/android/business/login/BindUser/updatetime J
return
.limit locals 3
.limit stack 3
.end method

.method public setUsername(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/username Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setWorkid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/BindUser/workid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " uap_uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/uap_uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " nickname="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/nickname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " joindate="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/joindate Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " telephone="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/telephone Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " signature="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/signature Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " updatetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/updatetime J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " isactive="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/isactive I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " sysavatar="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/sysavatar I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " username="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/username Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/type I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " workid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/workid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " duty="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/duty Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " mobilephone="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/mobilephone Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " email="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/email Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/unitid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " unitname="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/unitname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " studentid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/studentid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " gender="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/gender Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " birthday="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/birthday Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " blood="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/blood Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " site="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/site Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " description="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/description Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " fax="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/fax Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " addr="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/addr Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " postcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/postcode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " friend_updatetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/friend_updatetime J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " unittype="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/unittype I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " isgetall="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/isgetall I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " isgetextinfo="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/business/login/BindUser/isgetextinfo I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public updateUser(Lcom/product/android/business/login/BindUser;)V
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getUid()J
putfield com/product/android/business/login/BindUser/uid J
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getUap_uid()J
putfield com/product/android/business/login/BindUser/uap_uid J
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getNickname()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/nickname Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getJoindate()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/joindate Ljava/lang/String;
aload 0
aload 1
getfield com/product/android/business/login/BindUser/gender Ljava/lang/String;
putfield com/product/android/business/login/BindUser/gender Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getTelephone()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/telephone Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getSignature()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/signature Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getUpdatetime()J
putfield com/product/android/business/login/BindUser/updatetime J
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getIsactive()I
putfield com/product/android/business/login/BindUser/isactive I
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
putfield com/product/android/business/login/BindUser/sysavatar I
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/username Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getType()I
putfield com/product/android/business/login/BindUser/type I
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getWorkid()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/workid Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getDuty()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/duty Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getMobilephone()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/mobilephone Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getBirthday()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/birthday Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getEmail()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/email Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
putfield com/product/android/business/login/BindUser/unitid I
aload 0
getfield com/product/android/business/login/BindUser/type I
iconst_3
if_icmpeq L0
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/unitname Ljava/lang/String;
L0:
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getStudentid()Ljava/lang/String;
putfield com/product/android/business/login/BindUser/studentid Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method
