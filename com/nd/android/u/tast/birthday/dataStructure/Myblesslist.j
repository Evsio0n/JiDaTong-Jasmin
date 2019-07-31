.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/dataStructure/Myblesslist
.super java/lang/Object

.field private 'addtime' J

.field private 'total' J

.field private 'uid' J

.field private 'username' Ljava/lang/String;

.field private 'workid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAddtime()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/addtime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getTotal()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/total J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUsername()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/username Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWorkid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/workid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAddtime(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/addtime J
return
.limit locals 3
.limit stack 3
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/total J
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/uid J
aload 0
aload 1
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/username Ljava/lang/String;
aload 0
aload 1
ldc "workid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/workid Ljava/lang/String;
aload 0
aload 1
ldc "addtime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/addtime J
return
.limit locals 2
.limit stack 3
.end method

.method public setTotal(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/total J
return
.limit locals 3
.limit stack 3
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUsername(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/username Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setWorkid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Myblesslist/workid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
