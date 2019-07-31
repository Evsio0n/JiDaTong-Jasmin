.bytecode 50.0
.class public synchronized com/nd/android/u/tast/com/OapBirthdayCom
.super java/lang/Object

.field private static final 'BIRTHDAY_BIRTHUSER' Ljava/lang/String; = "/ajax/birthday/birthuser?"

.field private static final 'BIRTHDAY_BIRTHUSERLIST' Ljava/lang/String; = "/ajax/birthday/birthuserlist"

.field private static final 'BIRTHDAY_BLESS' Ljava/lang/String; = "/ajax/birthday/bless"

.field private static final 'BIRTHDAY_MYBLESSLIST' Ljava/lang/String; = "/ajax/birthday/myblesslist?"

.field private 'oapApi' Lcom/common/android/utils/http/HttpComExt;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putfield com/nd/android/u/tast/com/OapBirthdayCom/oapApi Lcom/common/android/utils/http/HttpComExt;
return
.limit locals 1
.limit stack 3
.end method

.method private getBirthuserJson(J)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "/ajax/birthday/birthuser?"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/tast/com/OapBirthdayCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 4
.limit stack 4
.end method

.method private getmyblesslistJson(II)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "/ajax/birthday/myblesslist?"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "page="
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
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/tast/com/OapBirthdayCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getBirthuser(J)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
invokespecial com/nd/android/u/tast/com/OapBirthdayCom/getBirthuserJson(J)Lorg/json/JSONObject;
astore 3
aload 3
ifnull L0
aload 3
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpne L1
aload 3
areturn
L1:
ldc "DYF"
ldc "\u4e2a\u4eba\u4e3b\u9875 getBirthuser \u5931\u8d25"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
aconst_null
areturn
L0:
ldc "DYF"
ldc "\u4e2a\u4eba\u4e3b\u9875getBirthuser \u5931\u8d25 null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L2
.limit locals 4
.limit stack 3
.end method

.method public getBirthuserlistJson()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
ldc "/ajax/birthday/birthuserlist"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/tast/com/OapBirthdayCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getmyblesslistlist(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;>;"
.throws com/common/android/utils/http/HttpException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 0
iload 1
iload 2
invokespecial com/nd/android/u/tast/com/OapBirthdayCom/getmyblesslistJson(II)Lorg/json/JSONObject;
astore 6
aload 5
astore 4
aload 6
ifnull L0
aload 6
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
aload 6
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
aload 6
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 3
iload 1
sipush 200
if_icmpne L1
aload 6
ldc "bless_users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
aload 5
astore 4
aload 6
ifnull L0
iconst_0
istore 1
L2:
aload 5
astore 4
iload 1
aload 6
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
aload 6
iload 1
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 4
new com/nd/android/u/tast/birthday/dataStructure/Myblesslist
dup
invokespecial com/nd/android/u/tast/birthday/dataStructure/Myblesslist/<init>()V
astore 7
aload 7
aload 4
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/setJsonObject(Lorg/json/JSONObject;)V
aload 7
iload 2
i2l
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/setTotal(J)V
aload 7
iload 3
i2l
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/setAddtime(J)V
aload 5
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L2
L1:
iload 1
sipush 401
if_icmpne L3
aconst_null
astore 4
L0:
aload 4
areturn
L3:
iload 1
sipush 405
if_icmpne L4
aconst_null
areturn
L4:
iload 1
sipush 406
if_icmpne L5
aconst_null
areturn
L5:
aload 5
astore 4
iload 1
sipush 409
if_icmpne L0
aconst_null
areturn
.limit locals 8
.limit stack 3
.end method

.method public getmyblesslistlistAll()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;>;"
.throws com/common/android/utils/http/HttpException
aconst_null
astore 4
aload 0
invokevirtual com/nd/android/u/tast/com/OapBirthdayCom/getmyblesslistlistTotal()I
istore 2
iload 2
ifle L0
iload 2
bipush 100
idiv
iconst_1
iadd
istore 3
iload 2
istore 1
iload 2
bipush 100
if_icmple L1
iload 2
bipush 100
irem
istore 1
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 2
L2:
aload 5
astore 4
iload 2
iload 3
if_icmpge L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
iload 2
iload 3
iconst_1
isub
if_icmpne L3
iload 1
ifeq L4
aload 0
iload 2
iconst_1
iadd
iload 1
invokevirtual com/nd/android/u/tast/com/OapBirthdayCom/getmyblesslistlist(II)Ljava/util/List;
astore 4
L4:
aload 5
aload 4
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 0
iload 2
iconst_1
iadd
bipush 100
invokevirtual com/nd/android/u/tast/com/OapBirthdayCom/getmyblesslistlist(II)Ljava/util/List;
astore 4
goto L4
L0:
aload 4
areturn
.limit locals 6
.limit stack 3
.end method

.method public getmyblesslistlistTotal()I
.throws com/common/android/utils/http/HttpException
aload 0
iconst_1
iconst_1
invokespecial com/nd/android/u/tast/com/OapBirthdayCom/getmyblesslistJson(II)Lorg/json/JSONObject;
astore 3
iconst_m1
istore 2
iload 2
istore 1
aload 3
ifnull L0
iload 2
istore 1
aload 3
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpne L0
aload 3
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
L0:
iload 1
ireturn
.limit locals 4
.limit stack 3
.end method

.method public postBlessGetJson(J)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "/ajax/birthday/bless"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "uid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/tast/com/OapBirthdayCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method
