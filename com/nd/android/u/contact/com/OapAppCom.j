.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapAppCom
.super com/nd/android/u/contact/com/base/OapBussSupportCom

.field private static final 'BIRTHDAY_BIRTHREMINDLIST' Ljava/lang/String; = "birthday/birthremindlist"

.field private static final 'XYBIRTHDAY_BIRTHREMINDLIST' Ljava/lang/String; = "/ajax/birthday/birthremindlist"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapBussSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getAppIsPerm(ILjava/lang/String;)I
.throws com/common/android/utils/http/HttpException
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/com/OapAppCom/getSupportAppIsPerm(ILjava/lang/String;)Lorg/json/JSONObject;
astore 2
aload 2
ifnull L0
aload 2
ldc "perm"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public final getAppMsgCount(Ljava/lang/String;ILjava/lang/String;)I
aload 0
aload 1
iload 2
aload 3
invokevirtual com/nd/android/u/contact/com/OapAppCom/getSupportAppMsgCount(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
astore 1
iconst_0
istore 2
aload 1
ifnull L0
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 4
.end method

.method public final getAppUrl(ILjava/lang/String;)Ljava/lang/String;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
ldc ""
astore 3
L0:
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/com/OapAppCom/getAppVer(ILjava/lang/String;)Lorg/json/JSONObject;
astore 4
L1:
aload 3
astore 2
aload 4
ifnull L4
L3:
aload 4
ldc "url"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
L4:
aload 2
areturn
L5:
astore 2
L6:
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
L7:
ldc ""
areturn
L2:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
ldc ""
areturn
.limit locals 5
.limit stack 3
.end method

.method public final getAppVerInfo(Ljava/util/Vector;)V
.signature "(Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;)V"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
aload 1
invokevirtual java/util/Vector/isEmpty()Z
ifne L3
aload 1
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 2
aload 2
invokevirtual com/product/android/commonInterface/contact/OapApp/getProduct_code()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
L0:
aload 0
aload 2
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 2
invokevirtual com/product/android/commonInterface/contact/OapApp/getProduct_code()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapAppCom/getAppVer(ILjava/lang/String;)Lorg/json/JSONObject;
astore 3
L1:
aload 3
ifnull L4
aload 2
aload 3
invokevirtual com/product/android/commonInterface/contact/OapApp/initValueByVerJson(Lorg/json/JSONObject;)V
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapAppDao/updateOapApp(Lcom/product/android/commonInterface/contact/OapApp;)Z 1
pop
goto L4
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
ldc "getAppVerInfo"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "appid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "   Product_code:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapApp/getProduct_code()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L4
L3:
return
.limit locals 4
.limit stack 3
.end method

.method public final getApplist(J)Ljava/util/Vector;
.signature "(J)Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
astore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 0
invokevirtual com/nd/android/u/contact/com/OapAppCom/getUnitmenu()Lorg/json/JSONArray;
astore 7
aload 7
ifnonnull L3
L4:
aload 6
areturn
L3:
iconst_0
istore 3
L5:
iload 3
aload 7
invokevirtual org/json/JSONArray/length()I
if_icmpge L4
L0:
aload 7
iload 3
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
L1:
aload 5
astore 4
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 5
aload 5
lload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setUid(J)V
aload 5
aload 4
invokevirtual com/product/android/commonInterface/contact/OapApp/initValueByMenuJson(Lorg/json/JSONObject;)V
aload 5
getfield com/product/android/commonInterface/contact/OapApp/appid I
sipush 9072
if_icmpne L6
aload 6
aload 5
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
L7:
iload 3
iconst_1
iadd
istore 3
goto L5
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
ldc "getApplist"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "i:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "   jsontemp:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L7
L6:
aload 6
aload 5
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
goto L7
.limit locals 8
.limit stack 3
.end method

.method public final getBirthRemindList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
aload 5
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "birthday/birthremindlist"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/OapAppCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 6
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpne L3
aload 6
ldc "remind_users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
aload 6
ifnull L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 3
iconst_0
istore 1
aload 6
invokevirtual org/json/JSONArray/length()I
istore 2
L4:
iload 1
iload 2
if_icmpge L3
new com/nd/android/u/contact/dataStructure/BirthdayRemindUser
dup
invokespecial com/nd/android/u/contact/dataStructure/BirthdayRemindUser/<init>()V
astore 7
L0:
aload 7
lload 3
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setUid(J)V
aload 7
aload 6
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/parseJson(Lorg/json/JSONObject;)V
L1:
aload 5
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L4
L2:
astore 8
aload 8
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
L3:
aload 5
areturn
.limit locals 9
.limit stack 3
.end method

.method public final getMenuTypeList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapAppType;>;"
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aconst_null
astore 2
aload 0
invokevirtual com/nd/android/u/contact/com/OapAppCom/getMenuType()Lorg/json/JSONArray;
astore 4
aload 4
ifnull L5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L6:
aload 3
astore 2
iload 1
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L5
L0:
aload 4
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 2
L1:
aload 2
ifnull L4
L3:
aload 3
new com/nd/android/u/contact/dataStructure/OapAppType
dup
aload 2
invokespecial com/nd/android/u/contact/dataStructure/OapAppType/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L6
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
L5:
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method public final getOapApp(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp;
.throws com/common/android/utils/http/HttpException
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 3
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/com/OapAppCom/getAppVer(ILjava/lang/String;)Lorg/json/JSONObject;
astore 2
aload 2
ifnull L0
aload 3
aload 2
invokevirtual com/product/android/commonInterface/contact/OapApp/initValueByVerJson(Lorg/json/JSONObject;)V
L0:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public final getXYBirthRemindList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
aload 5
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "/ajax/birthday/birthremindlist"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/OapAppCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 7
aconst_null
astore 5
aload 7
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpne L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 7
ldc "remind_users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 7
aload 6
astore 5
aload 7
ifnull L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 3
iconst_0
istore 1
aload 7
invokevirtual org/json/JSONArray/length()I
istore 2
L4:
aload 6
astore 5
iload 1
iload 2
if_icmpge L3
new com/nd/android/u/contact/dataStructure/BirthdayRemindUser
dup
invokespecial com/nd/android/u/contact/dataStructure/BirthdayRemindUser/<init>()V
astore 5
L0:
aload 5
lload 3
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setUid(J)V
aload 5
aload 7
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/parseJson(Lorg/json/JSONObject;)V
L1:
aload 6
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L4
L2:
astore 8
aload 8
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
L3:
aload 5
areturn
.limit locals 9
.limit stack 3
.end method
