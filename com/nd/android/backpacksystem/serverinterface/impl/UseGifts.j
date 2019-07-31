.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/UseGifts
.super com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem
.inner class public static UseGiftsResponse inner com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse outer com/nd/android/backpacksystem/serverinterface/impl/UseGifts

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public requestObj(Ljava/lang/Object;)Lorg/json/JSONObject;
aload 0
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/UseGifts/requestObjHelper(Ljava/lang/Object;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public resolveSuccessResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
ldc "getitems"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
new com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/<init>()V
astore 6
aload 6
aload 5
ldc "itemtype"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/mItemType J
aload 6
aload 5
ldc "count"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/mAmount I
aload 6
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/isObjectValid()Z
ifeq L2
aload 4
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
areturn
.limit locals 7
.limit stack 5
.end method
