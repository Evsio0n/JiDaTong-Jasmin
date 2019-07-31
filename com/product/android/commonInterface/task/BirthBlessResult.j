.bytecode 50.0
.class public synchronized com/product/android/commonInterface/task/BirthBlessResult
.super java/lang/Object

.field public 'iBlessCount' I

.field public 'iCode' I

.field public 'iExp' I

.field public 'iMoney' I

.field public 'lUid' J

.field public 'lUpdateTime' J

.field public 'mbParseResult' Z

.field public 'strMsg' Ljava/lang/String;

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/commonInterface/task/BirthBlessResult/iCode I
aload 0
ldc ""
putfield com/product/android/commonInterface/task/BirthBlessResult/strMsg Ljava/lang/String;
aload 0
lconst_0
putfield com/product/android/commonInterface/task/BirthBlessResult/lUid J
aload 0
iconst_0
putfield com/product/android/commonInterface/task/BirthBlessResult/iBlessCount I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/BirthBlessResult/iExp I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/BirthBlessResult/iMoney I
aload 0
lconst_0
putfield com/product/android/commonInterface/task/BirthBlessResult/lUpdateTime J
aload 0
iconst_0
putfield com/product/android/commonInterface/task/BirthBlessResult/mbParseResult Z
aload 0
aload 0
aload 1
invokespecial com/product/android/commonInterface/task/BirthBlessResult/loadData(Lorg/json/JSONObject;)Z
putfield com/product/android/commonInterface/task/BirthBlessResult/mbParseResult Z
return
.limit locals 2
.limit stack 3
.end method

.method private loadData(Lorg/json/JSONObject;)Z
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ifnonnull L0
L3:
iconst_0
ireturn
L0:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 1
ldc "code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/BirthBlessResult/iCode I
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
i2l
putfield com/product/android/commonInterface/task/BirthBlessResult/lUid J
aload 0
aload 1
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/task/BirthBlessResult/strMsg Ljava/lang/String;
aload 0
aload 1
ldc "blesscount"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/BirthBlessResult/iBlessCount I
aload 0
aload 1
ldc "exp"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/BirthBlessResult/iExp I
aload 0
aload 1
ldc "money"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/BirthBlessResult/iMoney I
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/task/BirthBlessResult/lUpdateTime J
L1:
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method
