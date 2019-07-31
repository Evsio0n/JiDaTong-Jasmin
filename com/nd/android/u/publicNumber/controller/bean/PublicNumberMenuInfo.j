.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IDbDataSupplier

.field private static final 'EXPIRED_TIME' I = 7200


.field public 'data' Ljava/lang/String;

.field public 'expire' J

.field private 'mMenuBottons' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;>;"

.field public 'pspid' Ljava/lang/String;

.field public 'time' J

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/pspid Ljava/lang/String;
aload 0
lconst_0
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/time J
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/data Ljava/lang/String;
aload 0
lconst_0
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/expire J
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/mMenuBottons Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/pspid Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method private static parseMenuSubButton(Lorg/json/JSONArray;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
.throws org/json/JSONException
iconst_0
istore 2
aload 0
invokevirtual org/json/JSONArray/length()I
istore 3
L0:
iload 2
iload 3
if_icmpge L1
aload 0
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 4
new com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
dup
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/<init>()V
astore 5
aload 5
aload 4
ldc "key"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/key Ljava/lang/String;
aload 5
aload 4
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/name Ljava/lang/String;
aload 5
aload 4
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/type Ljava/lang/String;
aload 5
aload 4
ldc "url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/url Ljava/lang/String;
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/subButtons Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 6
.limit stack 3
.end method

.method public convertToContentValues()Landroid/content/ContentValues;
aload 0
invokestatic com/nd/android/u/chatUtil/ReflectUtil/convertToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGenerateId()Ljava/lang/String;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMenuBottons()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;>;"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/mMenuBottons Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMsgId()J
lconst_0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSearchCondition(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/pspid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUpdateContentValues()Landroid/content/ContentValues;
aload 0
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/convertToContentValues()Landroid/content/ContentValues;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hasMenu()Z
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/mMenuBottons Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isExpired()Z
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/data Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_1
ireturn
L0:
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/time J
lsub
ldc2_w 1000L
ldiv
ldc2_w 7200L
lcmp
ifge L1
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
invokestatic com/nd/android/u/chatUtil/ReflectUtil/parseFromCursor(Ljava/lang/Object;Landroid/database/Cursor;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/parseMenuData()Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public parseMenuData()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch org/json/JSONException from L8 to L9 using L2
.catch org/json/JSONException from L10 to L11 using L2
.catch org/json/JSONException from L11 to L12 using L2
.catch org/json/JSONException from L13 to L14 using L2
.catch org/json/JSONException from L15 to L16 using L2
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/data Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "button"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifne L3
L1:
iconst_0
ireturn
L3:
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/mMenuBottons Ljava/util/ArrayList;
ifnonnull L13
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/mMenuBottons Ljava/util/ArrayList;
L4:
aload 3
ldc "button"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 3
L5:
aload 3
ifnull L17
L6:
aload 3
invokevirtual org/json/JSONArray/length()I
istore 2
L7:
iconst_0
istore 1
L18:
iload 1
iload 2
if_icmpge L17
L8:
aload 3
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
new com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
dup
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/<init>()V
astore 4
aload 5
ldc "sub_button"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L15
aload 4
aload 5
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/name Ljava/lang/String;
aload 4
aload 5
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/type Ljava/lang/String;
aload 4
aload 5
ldc "url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/url Ljava/lang/String;
aload 5
ldc "sub_button"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
L9:
aload 5
ifnull L11
L10:
aload 5
aload 4
invokestatic com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/parseMenuSubButton(Lorg/json/JSONArray;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
L11:
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/mMenuBottons Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L12:
iload 1
iconst_1
iadd
istore 1
goto L18
L13:
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/mMenuBottons Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L14:
goto L4
L2:
astore 3
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/mMenuBottons Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
iconst_0
ireturn
L15:
aload 4
aload 5
ldc "key"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/key Ljava/lang/String;
aload 4
aload 5
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/name Ljava/lang/String;
aload 4
aload 5
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/type Ljava/lang/String;
aload 4
aload 5
ldc "url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/url Ljava/lang/String;
L16:
goto L11
L17:
iconst_1
ireturn
.limit locals 6
.limit stack 3
.end method
