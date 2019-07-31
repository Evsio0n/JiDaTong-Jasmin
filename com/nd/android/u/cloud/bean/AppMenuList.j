.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/AppMenuList
.super java/lang/Object

.field public 'appMenuList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/main/AppMenu;>;"

.field public 'updateTime' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/cloud/bean/AppMenuList/updateTime J
return
.limit locals 1
.limit stack 3
.end method

.method public parseJsonObject(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
aload 0
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/android/u/cloud/bean/AppMenuList/parseJsonObject(Lorg/json/JSONObject;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method

.method public parseJsonObject(Lorg/json/JSONObject;)V
aload 1
ifnull L0
aload 0
aload 1
ldc "time"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/cloud/bean/AppMenuList/updateTime J
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
aload 1
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmpge L0
aload 1
iload 2
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 4
aload 4
ifnull L2
new com/product/android/commonInterface/main/AppMenu
dup
aload 4
invokespecial com/product/android/commonInterface/main/AppMenu/<init>(Lorg/json/JSONObject;)V
astore 4
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public toJsonObject()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L0:
aload 3
ldc "time"
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/updateTime J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 4
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
ifnull L7
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L7
L1:
iconst_0
istore 1
L3:
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
L4:
iload 1
iload 2
if_icmpge L7
L5:
aload 4
aload 0
getfield com/nd/android/u/cloud/bean/AppMenuList/appMenuList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/main/AppMenu
invokevirtual com/product/android/commonInterface/main/AppMenu/toJsonObject()Lorg/json/JSONObject;
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
L6:
iload 1
iconst_1
iadd
istore 1
goto L4
L7:
aload 3
ldc "data"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
aload 3
areturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method
