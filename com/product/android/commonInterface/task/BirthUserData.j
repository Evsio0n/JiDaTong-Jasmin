.bytecode 50.0
.class public synchronized com/product/android/commonInterface/task/BirthUserData
.super java/lang/Object

.field public 'iBlessCount' I

.field public 'iBlessed' I

.field public 'strBirthday' Ljava/lang/String;

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/product/android/commonInterface/task/BirthUserData/strBirthday Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/commonInterface/task/BirthUserData/iBlessCount I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/BirthUserData/iBlessed I
aload 1
ifnull L0
aload 0
aload 1
ldc "birthday"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/task/BirthUserData/strBirthday Ljava/lang/String;
aload 0
aload 1
ldc "blesscount"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/BirthUserData/iBlessCount I
aload 0
aload 1
ldc "isblessed"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/BirthUserData/iBlessed I
L0:
return
.limit locals 2
.limit stack 3
.end method
