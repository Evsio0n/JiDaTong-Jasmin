.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapUserDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapUserDao
.inner class public static final UserMapper inner com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper outer com/nd/android/u/contact/dao/impl/OapUserDaoImpl

.field private static final 'TAG' Ljava/lang/String; = "OapUserDaoImpl"

.field private 'sqliteTemplate' Lcom/common/android/utils/db/SqliteTemplate;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/db/SqliteTemplate
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private friendToValues(Lcom/product/android/commonInterface/contact/OapUser;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "fid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "nickname"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getNickname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "signature"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "uap_uid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUap_uid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUpdatetime()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "username"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "note"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getNote()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "spell1"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSpell1()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "spell2"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSpell2()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "sysavatar"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "sysavatar"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "isactive"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private getSearchByKeyCursor(Ljava/lang/String;)Landroid/database/Cursor;
.catch java/lang/NumberFormatException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
ldc "select uu_user.fid as fid, uu_user.workid as workid, uu_user.uap_uid as uapuid,uu_user.sysavatar as sysavatar,uu_user.note as note,uu_user.username as username,uu_user.signature as signature,uu_friendrelation.fgid as fgid,group_concat(uu_unitrelation.deptid) as deptid"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L3
aload 4
ldc ",group_concat(uu_classrelation.classid) as classid from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc " left join uu_classrelation on (uu_user.fid=uu_classrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
aload 4
ldc " left join uu_friendrelation on (uu_user.fid = uu_friendrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc " left join uu_unitrelation on (uu_user.fid=uu_unitrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L5
aload 1
astore 3
aload 1
ldc "/"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
aload 1
ldc "/"
ldc "//"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L6:
aload 3
astore 1
aload 3
ldc "%"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L7
aload 3
ldc "%"
ldc "/%"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L7:
aload 1
astore 3
aload 1
ldc "_"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L8
aload 1
ldc "_"
ldc "/_"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L8:
aload 3
astore 1
aload 3
ldc "'"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L9
aload 3
ldc "'"
ldc "''"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L9:
aload 1
astore 3
aload 1
ldc "#"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L10
aload 1
ldc "#"
ldc "##"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L10:
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " where ( uu_user.username like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L1
L0:
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or uu_user.fid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.note like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.spell1 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.spell2 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/' "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.workid like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/' "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.studentid like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'  )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
aload 4
ldc " group by uu_user.fid "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "  order by length(uu_user.spell2),(CASE WHEN length(uu_user.spell1)> 0  THEN uu_user.spell1 ELSE 'zzzzzz' END) "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
areturn
L3:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L11
aload 4
ldc ",group_concat(uu_jmclassrelation.classid) as classid from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc " left join uu_jmclassrelation on (uu_user.fid=uu_jmclassrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L4
L11:
aload 4
ldc " from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L4
L2:
astore 1
aload 1
invokevirtual java/lang/NumberFormatException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 3
.end method

.method private sqliteEscape(Ljava/lang/String;)Ljava/lang/String;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
ldc "/"
ldc "//"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "'"
ldc "''"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "["
ldc "/["
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "]"
ldc "/]"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "%"
ldc "/%"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "&"
ldc "/&"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "_"
ldc "/_"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "("
ldc "/("
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc ")"
ldc "/)"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method private updateUser(Lcom/product/android/commonInterface/contact/OapUser;Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_user"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "fid = ?"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
aload 2
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method private userAllToValues(Lcom/product/android/commonInterface/contact/OapUser;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "depts"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getDepts()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "email"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getEmail()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "fid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "gender"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "joindate"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getJoindate()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "mobilehone"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getMobilehone()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "nickname"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getNickname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "signature"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "telephone"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getTelephone()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "uap_uid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUap_uid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "unitid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUnitid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUpdatetime()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "username"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "note"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getNote()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "workid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getWorkid()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "type"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "duty"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getDuty()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "isactive"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "sysavatar"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "unitname"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUnitName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "birthday"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getBirthday()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "site"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSite()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "description"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getDescription()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "fax"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFax()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "addr"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getAddress()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "postcode"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getPostcode()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "spell1"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSpell1()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "spell2"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSpell2()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "studentid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getStudentid()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "contact_open"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getContactOpen()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "province"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getProvince()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "city"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getCity()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public deleteUnitRelation(I)V
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
ldc "UPDATE uu_user SET unitid = '-1',depts= '-1' WHERE unitid= %s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
aload 2
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
pop
return
.limit locals 4
.limit stack 6
.end method

.method public deleteUser(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Integer;>;)V"
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 2
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_user"
ldc "fid=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
goto L0
L1:
return
.limit locals 3
.limit stack 8
.end method

.method public deleteUser(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_user"
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public deleteUserByFid(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapJMClassRelation;>;)V"
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClassRelation
astore 2
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_user"
ldc "fid=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/getFid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
goto L0
L1:
return
.limit locals 3
.limit stack 9
.end method

.method public findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_user"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper
dup
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper/<init>()V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
areturn
.limit locals 4
.limit stack 4
.end method

.method public getHundredUserNameByGender(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Ljava/lang/String;>;"
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
ldc "select username from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 1
ifeq L0
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and gender = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L0:
aload 2
ldc " order by random() limit 200"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 2
ifnull L1
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L2:
aload 2
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L1
aload 3
aload 2
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L2
L1:
aload 2
ifnull L3
aload 2
invokeinterface android/database/Cursor/close()V 0
L3:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public getSearchContracByKeySize(Ljava/lang/String;)I
.catch java/lang/NumberFormatException from L0 to L1 using L2
iconst_0
istore 2
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 4
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
aload 5
ldc "select count(*) from( select uu_user.fid from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 4
astore 1
aload 4
ldc "/"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
aload 4
ldc "/"
ldc "//"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L4:
aload 1
astore 4
aload 1
ldc "%"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L5
aload 1
ldc "%"
ldc "/%"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
L5:
aload 4
astore 1
aload 4
ldc "_"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
aload 4
ldc "_"
ldc "/_"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L6:
aload 1
astore 4
aload 1
ldc "'"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L7
aload 1
ldc "'"
ldc "''"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
L7:
aload 4
astore 1
aload 4
ldc "#"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L8
aload 4
ldc "#"
ldc "##"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L8:
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " where ( uu_user.username like'%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L1
L0:
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or uu_user.fid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.note like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.spell1 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.spell2 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/' "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.workid like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/' "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.studentid like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'  )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L3:
aload 5
ldc " group by uu_user.fid )"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L9
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L9
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L9
aload 1
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
L10:
iload 2
ireturn
L2:
astore 4
aload 4
invokevirtual java/lang/NumberFormatException/printStackTrace()V
goto L1
L9:
aload 1
ifnull L10
aload 1
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
.limit locals 6
.limit stack 3
.end method

.method public getUidByName(Ljava/lang/String;)J
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteEscape(Ljava/lang/String;)Ljava/lang/String;
astore 1
lconst_0
lstore 4
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 6
aload 6
ldc "select fid from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " where username='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "';"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
lload 4
lstore 2
aload 1
ifnull L0
lload 4
lstore 2
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
lload 4
lstore 2
aload 1
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L0
aload 1
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 2
L0:
aload 1
ifnull L1
aload 1
invokeinterface android/database/Cursor/close()V 0
L1:
lload 2
lreturn
.limit locals 7
.limit stack 3
.end method

.method public getUsersByKey(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/getSearchByKeyCursor(Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aload 4
ifnull L0
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
new com/product/android/commonInterface/chat/SearchContract
dup
invokespecial com/product/android/commonInterface/chat/SearchContract/<init>()V
astore 5
aload 5
aload 4
aload 4
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setFid(J)V
aload 4
aload 4
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 2
aload 2
astore 1
aload 2
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L2
aload 4
aload 4
ldc "studentid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 1
L2:
aload 5
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setWorkid(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "uapuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUapuid(J)V
aload 5
aload 4
aload 4
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setSysavatar(I)V
aload 5
aload 4
aload 4
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUsername(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setSignature(Ljava/lang/String;)V
aload 4
aload 4
ldc "fgid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 2
aload 2
ifnull L3
aload 2
astore 1
ldc "0"
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
ldc "1"
astore 1
L4:
aload 5
aload 1
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/chat/SearchContract/setFgid(I)V
L3:
aload 5
aload 4
aload 4
ldc "deptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setDeptid(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "note"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setNote(Ljava/lang/String;)V
aload 3
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L1
L0:
aload 4
ifnull L5
aload 4
invokeinterface android/database/Cursor/close()V 0
L5:
aload 3
areturn
.limit locals 6
.limit stack 4
.end method

.method public getsearchContractSize()I
iconst_0
istore 1
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "select count(*) from ( select uu_user.fid from uu_user group by uu_user.fid )"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 2
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
aload 2
invokeinterface android/database/Cursor/close()V 0
L1:
iload 1
ireturn
L0:
aload 2
ifnull L1
aload 2
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public insertFriend(Lcom/product/android/commonInterface/contact/OapUser;)J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dao/impl/OapUserDaoImpl/isExists(J)Z
ifeq L0
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapUserDaoImpl/updateFriend(Lcom/product/android/commonInterface/contact/OapUser;)V
ldc2_w -1L
lreturn
L0:
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_user"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/friendToValues(Lcom/product/android/commonInterface/contact/OapUser;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final insertFriend(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)J"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
aload 1
ifnull L6
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/nd/android/u/contact/dao/impl/OapUserDaoImpl/insertFriend(Lcom/product/android/commonInterface/contact/OapUser;)J
pop2
L3:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
L6:
ldc2_w -1L
lreturn
L4:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
lconst_1
lreturn
.limit locals 2
.limit stack 2
.end method

.method public insertUser(Ljava/util/List;)I
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)I"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
aload 1
ifnull L6
aload 1
invokeinterface java/util/List/size()I 0
ifne L7
L6:
iconst_0
ireturn
L7:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 2
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
ldc "uu_user"
aconst_null
aload 0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/userAllToValues(Lcom/product/android/commonInterface/contact/OapUser;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L3:
goto L1
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
L8:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
invokeinterface java/util/List/size()I 0
ireturn
L4:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
goto L8
.limit locals 4
.limit stack 5
.end method

.method public insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dao/impl/OapUserDaoImpl/isExists(J)Z
ifeq L0
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapUserDaoImpl/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V
ldc2_w -1L
lreturn
L0:
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_user"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/userAllToValues(Lcom/product/android/commonInterface/contact/OapUser;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
.limit locals 3
.limit stack 3
.end method

.method public isExists(J)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 4
aload 4
ldc "uu_user"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 4
ldc "fid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 4
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 4
aload 4
ifnull L0
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 3
L1:
aload 4
ifnull L2
aload 4
invokeinterface android/database/Cursor/close()V 0
L2:
iload 3
ireturn
L0:
iconst_0
istore 3
goto L1
.limit locals 5
.limit stack 6
.end method

.method public searchContracByKey(IILjava/lang/String;)Ljava/util/List;
.signature "(IILjava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 3
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
iload 2
imul
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 7
aload 7
ldc "select uu_user.fid as fid, uu_user.workid as workid, uu_user.uap_uid as uapuid,uu_user.sysavatar as sysavatar,uu_user.note as note,uu_user.username as username,uu_user.signature as signature,uu_friendrelation.fgid as fgid,group_concat(uu_unitrelation.deptid) as deptid"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L3
aload 7
ldc ",group_concat(uu_classrelation.classid) as classid from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc " left join uu_classrelation on (uu_user.fid=uu_classrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
aload 7
ldc " left join uu_friendrelation on (uu_user.fid = uu_friendrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc " left join uu_unitrelation on (uu_user.fid=uu_unitrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L5
aload 4
astore 3
aload 4
ldc "/"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
aload 4
ldc "/"
ldc "//"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L6:
aload 3
astore 4
aload 3
ldc "%"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L7
aload 3
ldc "%"
ldc "/%"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
L7:
aload 4
astore 3
aload 4
ldc "_"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L8
aload 4
ldc "_"
ldc "/_"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L8:
aload 3
astore 4
aload 3
ldc "'"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L9
aload 3
ldc "'"
ldc "''"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
L9:
aload 4
astore 3
aload 4
ldc "#"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L10
aload 4
ldc "#"
ldc "##"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L10:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " where ( uu_user.username like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L1
L0:
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or uu_user.fid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.note like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.spell1 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.spell2 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/' "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.workid like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/' "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.studentid like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'  )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
aload 7
ldc " group by uu_user.fid "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "  order by length(uu_user.spell2),(CASE WHEN length(uu_user.spell1)> 0  THEN uu_user.spell1 ELSE 'zzzzzz' END) "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iconst_m1
iload 2
if_icmpeq L11
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " limit "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L11:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 6
aload 6
ifnull L12
aload 6
invokeinterface android/database/Cursor/getCount()I 0
ifle L12
aload 6
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L13:
new com/product/android/commonInterface/chat/SearchContract
dup
invokespecial com/product/android/commonInterface/chat/SearchContract/<init>()V
astore 7
aload 7
aload 6
aload 6
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setFid(J)V
aload 7
aload 6
aload 6
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setWorkid(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "uapuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUapuid(J)V
aload 7
aload 6
aload 6
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setSysavatar(I)V
aload 7
aload 6
aload 6
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUsername(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setSignature(Ljava/lang/String;)V
aload 6
aload 6
ldc "fgid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
aload 4
ifnull L14
aload 4
astore 3
ldc "0"
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L15
ldc "1"
astore 3
L15:
aload 7
aload 3
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/chat/SearchContract/setFgid(I)V
L14:
aload 7
aload 6
aload 6
ldc "deptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setDeptid(Ljava/lang/String;)V
aload 7
aload 6
aload 6
ldc "note"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setNote(Ljava/lang/String;)V
aload 5
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 6
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L13
L12:
aload 6
ifnull L16
aload 6
invokeinterface android/database/Cursor/close()V 0
L16:
aload 5
areturn
L3:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L17
aload 7
ldc ",group_concat(uu_jmclassrelation.classid) as classid from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc " left join uu_jmclassrelation on (uu_user.fid=uu_jmclassrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L4
L17:
aload 7
ldc " from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L4
L2:
astore 4
aload 4
invokevirtual java/lang/NumberFormatException/printStackTrace()V
goto L1
.limit locals 8
.limit stack 4
.end method

.method public searchContracByKey(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/getSearchByKeyCursor(Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aload 4
ifnull L0
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
new com/product/android/commonInterface/chat/SearchContract
dup
invokespecial com/product/android/commonInterface/chat/SearchContract/<init>()V
astore 5
aload 5
aload 4
aload 4
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setFid(J)V
aload 5
aload 4
aload 4
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setWorkid(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "uapuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUapuid(J)V
aload 5
aload 4
aload 4
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setSysavatar(I)V
aload 5
aload 4
aload 4
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUsername(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setSignature(Ljava/lang/String;)V
aload 4
aload 4
ldc "fgid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 2
aload 2
ifnull L2
aload 2
astore 1
ldc "0"
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
ldc "1"
astore 1
L3:
aload 5
aload 1
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/chat/SearchContract/setFgid(I)V
L2:
aload 5
aload 4
aload 4
ldc "deptid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setDeptid(Ljava/lang/String;)V
aload 5
aload 4
aload 4
ldc "note"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setNote(Ljava/lang/String;)V
aload 3
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L1
L0:
aload 4
ifnull L4
aload 4
invokeinterface android/database/Cursor/close()V 0
L4:
aload 3
areturn
.limit locals 6
.limit stack 4
.end method

.method public searchFilterContracByKey(IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
.signature "(IILjava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aconst_null
astore 3
L4:
aload 3
areturn
L3:
aload 3
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
iload 2
imul
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 8
aload 8
ldc "select uu_user.fid as fid,uu_user.workid as workid, uu_user.uap_uid as uapuid,uu_user.sysavatar as sysavatar,uu_user.note as note,uu_user.username as username,group_concat(uu_unitrelation.deptid) as deptid"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L5
aload 8
ldc ",group_concat(uu_classrelation.classid) as classid from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
ldc " left join uu_classrelation on (uu_user.fid=uu_classrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L6:
aload 8
ldc " left join uu_unitrelation on (uu_user.fid=uu_unitrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
ldc " where"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ifnull L7
aload 4
invokevirtual java/util/ArrayList/size()I
istore 2
iload 2
ifle L7
aload 8
ldc " uu_user.fid not in ("
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iconst_0
istore 1
L8:
iload 1
iload 2
if_icmpge L9
aload 8
aload 4
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
pop
iload 1
iload 2
iconst_1
isub
if_icmpne L10
aload 8
ldc ")"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L11:
iload 1
iconst_1
iadd
istore 1
goto L8
L5:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L12
aload 8
ldc ",group_concat(uu_jmclassrelation.classid) as classid from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
ldc " left join uu_jmclassrelation on (uu_user.fid=uu_jmclassrelation.fid)"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L6
L12:
aload 8
ldc " from uu_user"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L6
L10:
aload 8
ldc ","
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L11
L9:
aload 8
ldc " and "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L7:
ldc ""
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L13
aload 6
astore 3
aload 6
ldc "/"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L14
aload 6
ldc "/"
ldc "//"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L14:
aload 3
astore 4
aload 3
ldc "%"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L15
aload 3
ldc "%"
ldc "/%"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
L15:
aload 4
astore 3
aload 4
ldc "_"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L16
aload 4
ldc "_"
ldc "/_"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L16:
aload 3
astore 4
aload 3
ldc "'"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L17
aload 3
ldc "'"
ldc "''"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
L17:
aload 4
astore 3
aload 4
ldc "#"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L18
aload 4
ldc "#"
ldc "##"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L18:
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " ( uu_user.username like'%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L1
L0:
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or uu_user.fid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.note like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.spell1 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or  uu_user.spell2 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' escape '/' )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L13:
aload 8
ldc " group by uu_user.fid "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
ldc "  order by  length(uu_user.spell2),(CASE WHEN length(uu_user.spell1)> 0  THEN uu_user.spell1 ELSE 'zzzzzz' END) "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " limit "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 8
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aload 4
ifnull L19
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L19
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L20:
aload 4
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L19
new com/product/android/commonInterface/chat/SearchContract
dup
invokespecial com/product/android/commonInterface/chat/SearchContract/<init>()V
astore 3
aload 3
aload 4
aload 4
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setFid(J)V
aload 3
aload 4
aload 4
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setWorkid(Ljava/lang/String;)V
aload 3
aload 4
aload 4
ldc "uapuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUapuid(J)V
aload 3
aload 4
aload 4
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setSysavatar(I)V
aload 3
aload 4
aload 4
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUsername(Ljava/lang/String;)V
aload 3
aload 4
aload 4
ldc "note"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setNote(Ljava/lang/String;)V
aload 5
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L20
L2:
astore 4
aload 4
invokevirtual java/lang/NumberFormatException/printStackTrace()V
goto L1
L19:
aload 5
astore 3
aload 4
ifnull L4
aload 4
invokeinterface android/database/Cursor/close()V 0
aload 5
areturn
.limit locals 9
.limit stack 4
.end method

.method public searchUserByDeptids(ILjava/lang/String;I)Ljava/util/ArrayList;
.signature "(ILjava/lang/String;I)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
ldc "select uu_unitrelation.fid from uu_unitrelation left join uu_user on(uu_unitrelation.fid = uu_user.fid) "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " where uu_unitrelation.deptid in( "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ") "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and uu_unitrelation.unitid = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 3
ifeq L0
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and uu_user.gender = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L0:
aload 4
ldc " order by random() "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 2
ifnull L1
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L2:
aload 2
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L1
aload 4
aload 2
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L2
L1:
aload 2
ifnull L3
aload 2
invokeinterface android/database/Cursor/close()V 0
L3:
aload 4
areturn
.limit locals 5
.limit stack 3
.end method

.method public searchUserByID(Ljava/util/List;)Ljava/util/List;
.signature "(Ljava/util/List<Ljava/lang/Long;>;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aconst_null
astore 5
aload 5
astore 4
aload 1
ifnull L0
aload 5
astore 4
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
new java/lang/StringBuilder
dup
ldc "("
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 4
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
L2:
aload 4
aload 4
ldc ","
invokevirtual java/lang/StringBuilder/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/StringBuilder/deleteCharAt(I)Ljava/lang/StringBuilder;
pop
aload 4
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_user"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fid IN "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
anewarray java/lang/String
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper
dup
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper/<init>()V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
astore 4
L0:
aload 4
areturn
.limit locals 6
.limit stack 4
.end method

.method public searchUserByKeyExceptSelf(JILjava/lang/String;)Ljava/util/List;
.signature "(JILjava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 4
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 4
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 5
aload 5
ldc "uu_user"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 3
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "fid  !=   ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(username like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%'  or "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "spell1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' or "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "spell2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' or "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "workid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%')"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 5
new com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper
dup
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper/<init>()V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 6
.limit stack 4
.end method

.method public searchUserByUnitid(II)Ljava/util/ArrayList;
.signature "(II)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 3
ldc " select distinct t1.fid from (SELECT jmc.fid FROM uu_jmclassrelation jmc UNION ALL "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc " SELECT r.fid  FROM uu_unitrelation r) as t1, uu_user as u where t1.fid=u.fid "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and u.fid != "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 2
ifeq L1
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and u.gender = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 3
ldc " order by random() "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L2:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 3
ifnull L3
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L4:
aload 3
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L3
aload 4
aload 3
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L4
L0:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " select uu_user.fid from uu_user where uu_user.unitid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and uu_user.fid != "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 2
ifeq L5
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and uu_user.gender = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
aload 3
ldc " order by random() "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L2
L3:
aload 3
ifnull L6
aload 3
invokeinterface android/database/Cursor/close()V 0
L6:
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public searchUserIdByKey(JILjava/lang/String;)Ljava/util/ArrayList;
.signature "(JILjava/lang/String;)Ljava/util/ArrayList<Ljava/lang/Long;>;"
aload 0
aload 4
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/sqliteEscape(Ljava/lang/String;)Ljava/lang/String;
astore 4
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 5
ldc "select distinct u.fid from (SELECT jmc.fid FROM uu_jmclassrelation jmc UNION ALL  SELECT r.fid  FROM uu_unitrelation r) as t1, "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " uu_user as u where u.fid=t1.fid and u.unitid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and (u.username like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' or u.spell1 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' or u.spell2 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' or u.workid like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%')"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
ldc "winnyang"
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 4
ifnull L2
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L2
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L3:
aload 4
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L2
aload 5
aload 4
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L3
L0:
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " select uu_user.fid from uu_user where unitid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and (username like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%' "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or spell1 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or spell2 like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " or workid like '%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%')"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
L2:
aload 4
ifnull L4
aload 4
invokeinterface android/database/Cursor/close()V 0
L4:
aload 5
areturn
.limit locals 6
.limit stack 3
.end method

.method public searchUsersByClassid(JI)Ljava/util/ArrayList;
.signature "(JI)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
ldc "select uu_user.fid, uu_user.username, uu_user.signature, uu_user.sysavatar from uu_user left join uu_jmclassrelation on(uu_jmclassrelation.fid = uu_user.fid) "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " where uu_user.unitid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and uu_jmclassrelation.classid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc " order by random();"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
ldc "wanggd getstutentchild"
new java/lang/String
dup
aload 4
invokespecial java/lang/String/<init>(Ljava/lang/StringBuffer;)V
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 1
pop
aload 4
ifnull L0
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
aload 4
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L0
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
astore 6
aload 6
aload 4
aload 4
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
aload 6
aload 4
aload 4
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 6
aload 4
aload 4
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 6
aload 4
aload 4
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/commonInterface/contact/OapUserSimple/sysavatar I
aload 5
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L1
L0:
aload 4
ifnull L2
aload 4
invokeinterface android/database/Cursor/close()V 0
L2:
aload 5
areturn
.limit locals 7
.limit stack 4
.end method

.method public searchUsersByDeptid(JI)Ljava/util/ArrayList;
.signature "(JI)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
ldc "select uu_user.fid, uu_user.username, uu_user.signature, uu_user.sysavatar from uu_user left join uu_unitrelation on(uu_unitrelation.fid = uu_user.fid) "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " where uu_user.unitid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and uu_unitrelation.deptid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc " order by random();"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 4
ifnull L0
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
aload 4
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L0
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
astore 6
aload 6
aload 4
aload 4
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
aload 6
aload 4
aload 4
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 6
aload 4
aload 4
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 6
aload 4
aload 4
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/commonInterface/contact/OapUserSimple/sysavatar I
aload 5
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
goto L1
L0:
aload 4
ifnull L2
aload 4
invokeinterface android/database/Cursor/close()V 0
L2:
aload 5
areturn
.limit locals 7
.limit stack 4
.end method

.method public updateFriend(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/friendToValues(Lcom/product/android/commonInterface/contact/OapUser;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/updateUser(Lcom/product/android/commonInterface/contact/OapUser;Landroid/content/ContentValues;)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/userAllToValues(Lcom/product/android/commonInterface/contact/OapUser;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/updateUser(Lcom/product/android/commonInterface/contact/OapUser;Landroid/content/ContentValues;)Z
pop
return
.limit locals 2
.limit stack 4
.end method
