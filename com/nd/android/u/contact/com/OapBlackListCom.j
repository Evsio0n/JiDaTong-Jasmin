.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapBlackListCom
.super com/nd/android/u/contact/com/base/OapBlackListSupportCom

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapBlackListSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final addToBlackList(J)Z
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/addToBlack(J)Lorg/json/JSONObject;
ifnonnull L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 3
.end method

.method public final checkInBlack(J)I
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/checkBlack(J)Lorg/json/JSONObject;
astore 4
iconst_0
istore 3
aload 4
ifnonnull L0
L1:
iconst_m1
ireturn
L0:
aload 4
ifnull L2
aload 4
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifne L1
aload 4
ldc "inblacklist"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 3
L2:
iload 3
ireturn
.limit locals 5
.limit stack 3
.end method

.method public final delFromBlackList(J)Z
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/deleteFromBlackList(J)Lorg/json/JSONObject;
ifnonnull L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 3
.end method

.method public final getBlackList(JIILjava/util/ArrayList;)I
.signature "(JIILjava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;)I"
aload 0
iload 3
iload 4
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/getBlackListFromNet(II)Lorg/json/JSONObject;
astore 8
aload 8
ifnull L0
aload 8
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 6
aload 8
ldc "users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 8
aload 8
invokevirtual org/json/JSONArray/length()I
istore 7
iconst_0
istore 3
L1:
iload 6
istore 4
iload 3
iload 7
if_icmpge L2
new com/product/android/commonInterface/contact/BlackListPerson
dup
invokespecial com/product/android/commonInterface/contact/BlackListPerson/<init>()V
astore 9
aload 9
aload 8
iload 3
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/contact/BlackListPerson/LoadFromJson(Lorg/json/JSONObject;)V
aload 9
lload 1
putfield com/product/android/commonInterface/contact/BlackListPerson/myoapid J
aload 5
aload 9
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L1
L0:
iconst_m1
istore 4
L2:
iload 4
ireturn
.limit locals 10
.limit stack 3
.end method

.method public final getBlackList(J)Lcom/common/android/utils/http/Response;
aconst_null
areturn
.limit locals 3
.limit stack 1
.end method
