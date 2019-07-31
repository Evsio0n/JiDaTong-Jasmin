.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapFriendGroupCom
.super com/nd/android/u/contact/com/base/OapFriendGroupSupportCom

.field private static final 'TAG' Ljava/lang/String;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/com/OapFriendGroupCom/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final addFriendGroupreturncode(Ljava/lang/String;)I
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
iconst_m1
istore 2
aload 0
aload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/addFriendGroupreturn(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
ifnull L0
aload 1
ldc "tagid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
L0:
iload 2
ireturn
.limit locals 3
.limit stack 2
.end method

.method public final getAllFriendListMember(IJ)Ljava/util/List;
.signature "(IJ)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/getFriendList()Ljava/util/List;
astore 9
aload 9
ifnull L0
iconst_0
istore 4
iconst_1
istore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 11
invokestatic java/lang/System/currentTimeMillis()J
pop2
L1:
iload 4
iload 5
if_icmpge L2
aload 0
iconst_m1
iload 4
bipush 50
iload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/getSupportFriendListMember(IIII)Lorg/json/JSONObject;
astore 8
aload 8
ifnull L1
aload 8
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 6
aload 8
ldc "tags"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 8
iload 6
istore 5
aload 8
ifnull L1
aload 8
ldc "friends"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 12
iload 6
istore 5
aload 12
ifnull L1
aload 9
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 13
L3:
aload 13
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 13
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapFriendGroup
astore 14
aload 14
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setUid(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 15
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
istore 7
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
iload 7
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/deleteFriendRelationByGroup(I)Z 1
pop
aconst_null
astore 8
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 8
L5:
iconst_0
istore 5
L6:
iload 5
aload 12
invokevirtual org/json/JSONArray/length()I
if_icmpge L7
aload 12
iload 5
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 16
aload 16
ifnull L8
iload 7
aload 16
ldc "tagid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
if_icmpne L8
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 17
aload 17
aload 16
invokevirtual com/product/android/commonInterface/contact/OapUser/initValueByFriend(Lorg/json/JSONObject;)V
aload 17
lload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
aload 15
aload 17
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L9
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 17
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokeinterface com/nd/android/u/contact/dao/OapUserDao/isExists(J)Z 2
ifne L10
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 17
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L10:
aload 11
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
aload 17
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
aload 17
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
iload 7
aload 17
invokevirtual com/product/android/commonInterface/contact/OapUser/getNote()Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>(JJILjava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L8:
iload 5
iconst_1
iadd
istore 5
goto L6
L9:
aload 10
aload 17
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L10
L7:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L11
aload 8
invokevirtual java/lang/StringBuilder/length()I
iconst_1
if_icmple L11
aload 8
iconst_0
aload 8
invokevirtual java/lang/StringBuilder/length()I
iconst_1
isub
invokevirtual java/lang/StringBuilder/substring(II)Ljava/lang/String;
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 8
aload 8
arraylength
istore 7
iconst_0
istore 5
L12:
iload 5
iload 7
if_icmpge L11
aload 8
iload 5
aaload
astore 16
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 16
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/safeGet(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
iload 5
iconst_1
iadd
istore 5
goto L12
L11:
aload 14
aload 15
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setFriendList(Ljava/util/List;)V
goto L3
L4:
iload 4
aload 12
invokevirtual org/json/JSONArray/length()I
iadd
istore 4
iload 6
istore 5
goto L1
L2:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 10
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertFriend(Ljava/util/List;)J 1
pop2
invokestatic java/lang/System/currentTimeMillis()J
pop2
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 11
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/insertFriendRelation(Ljava/util/List;)J 1
pop2
aload 9
areturn
L0:
aconst_null
areturn
.limit locals 18
.limit stack 9
.end method

.method public final getFriendGroups()Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
aload 0
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/getFriendGroupList()Lcom/common/android/utils/http/Response;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getFriendList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;"
.throws com/common/android/utils/http/HttpException
aconst_null
astore 3
aload 0
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/getSupportFriendList()Lorg/json/JSONObject;
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 4
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 3
astore 2
aload 4
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L1:
aload 3
astore 2
iload 1
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
aload 4
iload 1
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 2
aload 2
ifnull L2
aload 3
new com/nd/android/u/contact/dataStructure/OapFriendGroup
dup
aload 2
invokespecial com/nd/android/u/contact/dataStructure/OapFriendGroup/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method public final getFriendListMember(Ljava/util/List;IIJ)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;IIJ)V"
.throws com/common/android/utils/http/HttpException
iconst_0
istore 6
iconst_1
istore 7
L0:
iload 6
iload 7
if_icmpge L1
aload 0
iload 2
iload 6
iconst_m1
iload 3
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/getSupportFriendListMember(IIII)Lorg/json/JSONObject;
astore 9
aload 9
ifnull L0
aload 9
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 8
aload 9
ldc "tags"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 9
iload 8
istore 7
aload 9
ifnull L0
aload 9
ldc "friends"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 9
iload 8
istore 7
aload 9
ifnull L0
iconst_0
istore 7
L2:
iload 7
aload 9
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
aload 9
iload 7
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 10
aload 10
ifnull L4
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 11
aload 11
aload 10
invokevirtual com/product/android/commonInterface/contact/OapUser/initValueByFriend(Lorg/json/JSONObject;)V
aload 11
lload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
aload 1
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
iload 7
iconst_1
iadd
istore 7
goto L2
L3:
iload 6
iload 7
iadd
istore 6
iload 8
istore 7
goto L0
L1:
return
.limit locals 12
.limit stack 5
.end method
