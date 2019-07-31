.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList
.super com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl
.inner class public static ItemTypeListUrlParams inner com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams outer com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getHttpMethod()Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
getstatic com/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod/GET Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestStr()Ljava/lang/String;
ldc "itemc/itemtypelist"
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestUrlParams(Ljava/lang/Object;)Ljava/util/Map;
.signature "(Ljava/lang/Object;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
aload 1
instanceof com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams
ifne L0
new java/util/HashMap
dup
iconst_0
invokespecial java/util/HashMap/<init>(I)V
areturn
L0:
aload 1
checkcast com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams
astore 1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams/isObjectValid()Z
ifeq L1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams/doConvert()Ljava/util/Map;
areturn
L1:
new java/util/HashMap
dup
iconst_0
invokespecial java/util/HashMap/<init>(I)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public resolveSuccessResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 1
ldc "data"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
invokevirtual org/json/JSONArray/length()I
istore 4
iconst_0
istore 2
L0:
iload 2
iload 4
if_icmpge L1
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 8
new com/nd/android/backpacksystem/data/BaseItemProperty
dup
invokespecial com/nd/android/backpacksystem/data/BaseItemProperty/<init>()V
astore 7
aload 7
aload 8
ldc "itemtype"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/setItemTypeId(J)V
aload 7
aload 8
ldc "title"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/setName(Ljava/lang/String;)V
aload 7
aload 8
ldc "desc"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/setBrief(Ljava/lang/String;)V
aload 7
aload 8
ldc "save_time"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/setPeriodOfValidity(J)V
aload 7
aload 8
ldc "iconurl"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/setIconUrl(Ljava/lang/String;)V
aload 7
aload 8
ldc "givemsg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/setDefalutMsg(Ljava/lang/String;)V
aload 7
aload 8
ldc "monopoly"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokestatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/value2Flag(I)Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/setExclusiveFlag(Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;)V
aload 8
ldc "thankmsg"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 8
aload 8
ifnull L2
aload 8
invokevirtual org/json/JSONArray/length()I
istore 5
iload 5
anewarray java/lang/String
astore 9
iconst_0
istore 3
L3:
iload 3
iload 5
if_icmpge L4
aload 9
iload 3
aload 8
iload 3
invokevirtual org/json/JSONArray/getString(I)Ljava/lang/String;
aastore
iload 3
iconst_1
iadd
istore 3
goto L3
L4:
aload 7
aload 9
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/setThankMsg([Ljava/lang/String;)V
L2:
aload 7
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/isObjectValid()Z
ifeq L5
aload 6
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 6
areturn
.limit locals 10
.limit stack 5
.end method
