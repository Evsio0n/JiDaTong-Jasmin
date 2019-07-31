.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/MyItemList
.super com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl

.field public static final 'FETCH_SIZE_EACH_TIME' I = 21


.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private fillSourceInfoToList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.signature "(Ljava/util/List<Lcom/nd/android/backpacksystem/data/MyItems;>;Ljava/util/List<Ljava/lang/Long;>;)Ljava/util/List<Lcom/nd/android/backpacksystem/data/MyItems;>;"
aload 2
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getUserSimpleList(Ljava/util/List;)Ljava/util/ArrayList;
astore 5
aload 5
ifnull L0
aload 5
invokevirtual java/util/ArrayList/size()I
aload 2
invokeinterface java/util/List/size()I 0
if_icmpne L0
aload 1
invokeinterface java/util/List/size()I 0
istore 4
iconst_0
istore 3
L1:
iload 3
iload 4
if_icmpge L0
aload 1
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/backpacksystem/data/MyItems
astore 2
aload 2
ifnull L2
aload 2
invokevirtual com/nd/android/backpacksystem/data/MyItems/getSourceType()I
iconst_2
if_icmpne L2
aload 5
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 6
L3:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 7
aload 7
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 2
invokevirtual com/nd/android/backpacksystem/data/MyItems/getSourceId()J
lcmp
ifne L3
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u6765\u81ea\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/backpacksystem/data/MyItems/setSourceStr(Ljava/lang/String;)V
L4:
iload 3
iconst_1
iadd
istore 3
goto L1
L2:
aload 2
ldc "\u6765\u81ea\uff1a\u7cfb\u7edf"
invokevirtual com/nd/android/backpacksystem/data/MyItems/setSourceStr(Ljava/lang/String;)V
goto L4
L0:
aload 1
areturn
.limit locals 8
.limit stack 4
.end method

.method public getHttpMethod()Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
getstatic com/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod/GET Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestStr()Ljava/lang/String;
ldc "itemc/myitemlist"
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestUrlParams(Ljava/lang/Object;)Ljava/util/Map;
.signature "(Ljava/lang/Object;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
aload 1
instanceof com/nd/android/backpacksystem/serverinterface/impl/StartCountParams
ifne L0
new java/util/HashMap
dup
iconst_0
invokespecial java/util/HashMap/<init>(I)V
areturn
L0:
aload 1
checkcast com/nd/android/backpacksystem/serverinterface/impl/StartCountParams
astore 1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/isObjectValid()Z
ifeq L1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/doConvert()Ljava/util/Map;
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
astore 10
aload 1
ldc "servertime"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
lstore 5
aload 1
ldc "data"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 11
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 12
new com/nd/android/backpacksystem/data/MyItems
dup
invokespecial com/nd/android/backpacksystem/data/MyItems/<init>()V
astore 13
aload 13
aload 12
ldc "itemid"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
invokevirtual com/nd/android/backpacksystem/data/MyItems/setItemId(J)V
aload 13
aload 12
ldc "itemtype"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
invokevirtual com/nd/android/backpacksystem/data/MyItems/setItemTypeId(I)V
aload 13
aload 12
ldc "pack_num"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
invokevirtual com/nd/android/backpacksystem/data/MyItems/setAmount(I)V
aload 13
aload 12
ldc "del_time"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
invokevirtual com/nd/android/backpacksystem/data/MyItems/setDelTime(J)V
aload 12
ldc "whitelisted"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
iconst_1
if_icmpne L2
iconst_1
istore 9
L3:
aload 13
iload 9
invokevirtual com/nd/android/backpacksystem/data/MyItems/setWhiteListFlag(Z)V
aload 12
ldc "source_type"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
istore 4
aload 12
ldc "source_id"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
lstore 7
aload 13
iload 4
invokevirtual com/nd/android/backpacksystem/data/MyItems/setSourceType(I)V
aload 13
lload 7
invokevirtual com/nd/android/backpacksystem/data/MyItems/setSourceId(J)V
iload 4
iconst_2
if_icmpne L4
aload 11
lload 7
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
aload 13
lload 5
invokevirtual com/nd/android/backpacksystem/data/MyItems/setServerTime(J)V
aload 13
invokevirtual com/nd/android/backpacksystem/data/MyItems/isObjectValid()Z
ifeq L5
aload 10
aload 13
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
iconst_0
istore 9
goto L3
L1:
aload 0
aload 10
aload 11
invokespecial com/nd/android/backpacksystem/serverinterface/impl/MyItemList/fillSourceInfoToList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
areturn
.limit locals 14
.limit stack 5
.end method
