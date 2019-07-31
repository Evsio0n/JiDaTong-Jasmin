.bytecode 50.0
.class public synchronized com/common/android/utils/JSONUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 0
ifnonnull L5
L6:
dconst_0
dreturn
L5:
aload 0
aload 1
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L6
L0:
aload 0
aload 1
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
L1:
aload 4
ifnull L6
L3:
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
aload 4
invokestatic com/common/android/utils/StringUtils/isDecimal(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 1
invokevirtual org/json/JSONObject/getDouble(Ljava/lang/String;)D
dstore 2
L4:
dload 2
dreturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
dconst_0
dreturn
.limit locals 5
.limit stack 2
.end method

.method public static getFilterString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 0
ifnonnull L5
ldc ""
areturn
L5:
aload 0
aload 1
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L6
L0:
aload 0
aload 1
invokevirtual org/json/JSONObject/get(Ljava/lang/String;)Ljava/lang/Object;
getstatic org/json/JSONObject/NULL Ljava/lang/Object;
if_acmpeq L7
aload 0
aload 1
invokevirtual org/json/JSONObject/isNull(Ljava/lang/String;)Z
ifeq L3
L1:
goto L7
L3:
aload 0
aload 1
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 0
L4:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
L6:
ldc ""
areturn
L7:
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 0
ifnonnull L5
L6:
iconst_0
ireturn
L5:
aload 0
aload 1
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L6
L0:
aload 0
aload 1
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
L1:
aload 3
ifnull L6
L3:
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
aload 3
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 1
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L4:
iload 2
ireturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method public static getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
.catch org/json/JSONException from L0 to L1 using L2
aload 0
ifnonnull L3
aconst_null
areturn
L3:
aload 0
aload 1
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
L0:
aload 0
aload 1
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
L4:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
aconst_null
astore 2
aload 0
ifnonnull L3
aconst_null
areturn
L3:
aload 0
invokevirtual org/json/JSONArray/length()I
iload 1
if_icmpge L0
aconst_null
areturn
L0:
aload 0
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
aload 2
astore 0
goto L1
.limit locals 3
.limit stack 2
.end method

.method public static getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
aload 0
ifnonnull L3
L4:
aconst_null
areturn
L3:
aload 0
aload 1
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
L0:
aload 0
aload 1
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 0
ifnonnull L5
L6:
lconst_0
lreturn
L5:
aload 0
aload 1
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L6
L0:
aload 0
aload 1
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
L1:
aload 4
ifnull L6
L3:
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
aload 4
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 1
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 2
L4:
lload 2
lreturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
lconst_0
lreturn
.limit locals 5
.limit stack 2
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
aload 0
ifnonnull L3
ldc ""
areturn
L3:
aload 0
aload 1
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
L0:
aload 0
aload 1
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
L4:
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method public static putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.throws org/json/JSONException
aload 0
ifnull L0
aload 2
ifnull L0
ldc ""
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
return
L1:
aload 0
aload 1
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
return
.limit locals 3
.limit stack 3
.end method
