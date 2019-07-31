.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/helper/ContactPubFunction
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "ContactPubFunction"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAllUserinfoAndUnit([J)Ljava/util/List;
.signature "([J)Ljava/util/List<Lcom/product/android/business/login/BindUser;>;"
.catch java/lang/Exception from L0 to L1 using L2
aconst_null
astore 4
aload 0
arraylength
ifle L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L3:
aload 0
arraylength
istore 2
iconst_0
istore 1
aconst_null
astore 3
L4:
iload 1
iload 2
if_icmpge L5
aload 0
iload 1
laload
invokestatic com/nd/android/u/contact/db/NDDatabase/getDBName(J)Ljava/lang/String;
astore 5
L0:
new com/nd/android/u/contact/db/ContactDBHelper
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 5
invokespecial com/nd/android/u/contact/db/ContactDBHelper/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 5
L1:
aload 5
astore 3
L6:
aload 3
invokevirtual com/nd/android/u/contact/db/ContactDBHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 5
aload 5
ldc "uu_userInfoandunit"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 6
aload 6
ifnull L7
aload 6
invokeinterface android/database/Cursor/getCount()I 0
ifle L7
new com/product/android/business/login/BindUser
dup
invokespecial com/product/android/business/login/BindUser/<init>()V
astore 7
L8:
aload 6
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L9
aload 7
aload 6
aload 6
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUsername(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "mobilephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setMobilephone(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setType(I)V
aload 7
aload 6
aload 6
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setWorkid(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "studentid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setStudentid(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "mobilephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setMobilephone(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "email"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setEmail(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "duty"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setDuty(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "unitid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUnitid(I)V
aload 7
aload 6
aload 6
ldc "unitname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitname(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "unitshortname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitshortname(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "unitcode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitcode(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/login/BindUser/setUid(J)V
aload 7
aload 6
aload 6
ldc "uap_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUap_uid(I)V
aload 7
aload 6
aload 6
ldc "nickname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setNickname(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "joindate"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setJoindate(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "telephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setTelephone(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setSignature(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setSysavatar(I)V
aload 7
aload 6
aload 6
ldc "gender"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setGender(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "birthday"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setBirthday(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "blood"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setBlood(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "site"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setSite(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "description"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setDescription(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "fax"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setFax(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "addr"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setAddr(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "postcode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setPostcode(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "isadmin"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsadmin(I)V
aload 7
aload 6
aload 6
ldc "unittype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUnittype(I)V
aload 7
aload 6
aload 6
ldc "isgetall"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsgetall(I)V
aload 7
aload 6
aload 6
ldc "isgetextinfo"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsgetextinfo(I)V
aload 7
aload 6
aload 6
ldc "receivegroupmsg"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setReceivegroupmsg(I)V
aload 7
aload 6
aload 6
ldc "deporcassid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setDeporcassid(I)V
goto L8
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
goto L6
L9:
aload 4
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
aload 6
invokeinterface android/database/Cursor/close()V 0
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
iload 1
iconst_1
iadd
istore 1
goto L4
L5:
aload 4
areturn
.limit locals 8
.limit stack 8
.end method

.method public static getFlowTagbyUid(JLcom/product/android/ui/waterfall/FlowViewOnClickListener;)Lcom/product/android/ui/waterfall/FlowTag;
new com/product/android/ui/waterfall/FlowTag
dup
invokespecial com/product/android/ui/waterfall/FlowTag/<init>()V
astore 4
aload 4
lload 0
putfield com/product/android/ui/waterfall/FlowTag/uid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 0
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 5
aload 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
putfield com/product/android/ui/waterfall/FlowTag/mUserNameText Ljava/lang/String;
aload 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
putfield com/product/android/ui/waterfall/FlowTag/mSignText Ljava/lang/String;
aload 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
putfield com/product/android/ui/waterfall/FlowTag/sysAvatarId I
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
lload 0
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDeptid(J)I
istore 3
aload 4
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
iload 3
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDepartNameByDeptId(I)Ljava/lang/String;
putfield com/product/android/ui/waterfall/FlowTag/departName Ljava/lang/String;
aload 4
aload 2
invokevirtual com/product/android/ui/waterfall/FlowTag/setClickListener(Lcom/product/android/ui/waterfall/FlowViewOnClickListener;)V
aload 4
areturn
.limit locals 6
.limit stack 3
.end method

.method public static saveNetSearchFirends(Ljava/util/List;)Z
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)Z"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch org/json/JSONException from L4 to L5 using L3
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
.catch org/json/JSONException from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L10
.catch java/lang/Exception from L11 to L12 using L10
aload 0
ifnull L13
aload 0
invokeinterface java/util/List/size()I 0
ifne L14
L13:
iconst_0
istore 2
L15:
iload 2
ireturn
L14:
iconst_1
istore 3
aconst_null
astore 5
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L1:
iconst_1
istore 1
L4:
iload 1
aload 0
invokeinterface java/util/List/size()I 0
if_icmpge L6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L5:
iload 1
iconst_1
iadd
istore 1
goto L4
L6:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 4
invokevirtual com/nd/android/u/contact/com/OapUserCom/getUserListInfo(Ljava/lang/String;)Ljava/util/List;
astore 0
L7:
aload 0
ifnull L16
aload 0
invokeinterface java/util/List/size()I 0
ifne L8
L16:
iconst_0
ireturn
L2:
astore 0
aload 0
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 5
astore 0
goto L7
L3:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
aload 5
astore 0
goto L7
L8:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Ljava/util/List;)I 1
pop
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L9:
iload 3
istore 2
L11:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L15
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 4
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 4
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
L12:
goto L9
L10:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method

.method public static searchLocalGroup(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(Ljava/lang/String;)Ljava/util/List; 1
astore 0
aload 0
ifnull L0
aload 0
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 7
new com/product/android/commonInterface/contact/LocalSearchResult
dup
invokespecial com/product/android/commonInterface/contact/LocalSearchResult/<init>()V
astore 8
aload 8
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setId(J)V
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
iconst_3
if_icmpne L2
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGMemberList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setName(Ljava/lang/String;)V
L3:
aload 8
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setGroupType(I)V
aload 8
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getNotice()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setDescription(Ljava/lang/String;)V
aload 8
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/GROUP Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setType(Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;)V
aload 8
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/getGroupType()I
tableswitch 0
L4
L5
L6
L7
L8
default : L9
L9:
goto L1
L4:
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
aload 5
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
aload 8
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setName(Ljava/lang/String;)V
goto L3
L8:
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/community_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
aload 2
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L5:
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/departmeng_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
aload 3
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L6:
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/classeng_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
aload 4
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L7:
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/disscussion I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
aload 6
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L0:
aload 2
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 3
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 4
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 5
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 6
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 1
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
aload 3
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
aload 4
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
aload 5
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
aload 6
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
areturn
.limit locals 9
.limit stack 3
.end method

.method public static searchLocalUser(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getUsersByKey(Ljava/lang/String;)Ljava/util/List; 1
astore 0
aload 0
ifnull L0
aload 0
invokeinterface java/util/List/size()I 0
ifgt L1
L0:
aload 2
areturn
L1:
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L2:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContract
astore 0
new com/product/android/commonInterface/contact/LocalSearchResult
dup
invokespecial com/product/android/commonInterface/contact/LocalSearchResult/<init>()V
astore 6
aload 6
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setId(J)V
aload 6
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getWorkid()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setDisplayId(Ljava/lang/String;)V
aload 6
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUsername()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setName(Ljava/lang/String;)V
aload 6
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getSignature()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setDescription(Ljava/lang/String;)V
aload 6
getstatic com/product/android/commonInterface/contact/LocalSearchResult$ResultType/USER Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setType(Lcom/product/android/commonInterface/contact/LocalSearchResult$ResultType;)V
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/searchFriendRelationByFid(J)Lcom/nd/android/u/contact/dataStructure/FriendRelation; 2
astore 1
aload 1
ifnull L4
aload 6
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/getFgid()I
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/searchFriendGroupByFgid(I)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
aload 3
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L4:
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/searchClassRelation(J)Ljava/util/List; 2
astore 1
aload 1
ifnull L5
aload 1
invokeinterface java/util/List/size()I 0
ifle L5
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/getJMClass(J)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 2
astore 0
aload 0
ifnull L6
aload 6
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
L7:
aload 4
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L6:
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitName()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
goto L7
L5:
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getDeptid()Ljava/lang/String;
astore 1
aload 1
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L8
ldc "0"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L9
L8:
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitName()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
aload 4
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L9:
aload 1
astore 0
aload 1
ldc ","
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L10
aload 1
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 7
aload 7
iconst_0
aaload
astore 1
aload 1
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L11
aload 1
astore 0
ldc "0"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
L11:
aload 7
iconst_1
aaload
astore 0
L10:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 0
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart; 1
astore 0
aload 0
ifnull L2
aload 6
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptname()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/LocalSearchResult/setTypeName(Ljava/lang/String;)V
aload 4
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L3:
aload 3
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 4
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 2
aload 3
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
aload 4
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
areturn
.limit locals 8
.limit stack 3
.end method

.method public static setListViewHeight(Landroid/widget/ListView;)V
aload 0
invokevirtual android/widget/ListView/getAdapter()Landroid/widget/ListAdapter;
astore 4
aload 4
ifnonnull L0
return
L0:
iconst_0
istore 2
iconst_0
istore 1
aload 4
invokeinterface android/widget/ListAdapter/getCount()I 0
istore 3
L1:
iload 1
iload 3
if_icmpge L2
aload 4
iload 1
aconst_null
aload 0
invokeinterface android/widget/ListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
astore 5
aload 5
iconst_0
iconst_0
invokevirtual android/view/View/measure(II)V
iload 2
aload 5
invokevirtual android/view/View/getMeasuredHeight()I
iadd
istore 2
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 0
invokevirtual android/widget/ListView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 5
aload 5
aload 0
invokevirtual android/widget/ListView/getDividerHeight()I
aload 4
invokeinterface android/widget/ListAdapter/getCount()I 0
iconst_1
isub
imul
iload 2
iadd
putfield android/view/ViewGroup$LayoutParams/height I
aload 0
aload 5
invokevirtual android/widget/ListView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 6
.limit stack 4
.end method
