.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/JMClassUpdateInfos
.super java/lang/Object

.field private 'class_id' I

.field private 'object' I

.field private 'objectid' I

.field private 'opt' I

.field private 'orgver' I

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
ldc "orgver"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/orgver I
aload 0
aload 1
ldc "object"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/object I
aload 0
aload 1
ldc "objectid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/objectid I
aload 0
aload 1
ldc "class_id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/class_id I
aload 0
aload 1
ldc "opt"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/opt I
return
.limit locals 2
.limit stack 3
.end method

.method public getClass_id()I
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/class_id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObject()I
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/object I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObjectid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/objectid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOpt()I
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/opt I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOrgver()I
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/orgver I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setClass_id(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/class_id I
return
.limit locals 2
.limit stack 2
.end method

.method public setObject(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/object I
return
.limit locals 2
.limit stack 2
.end method

.method public setObjectid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/objectid I
return
.limit locals 2
.limit stack 2
.end method

.method public setOpt(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/opt I
return
.limit locals 2
.limit stack 2
.end method

.method public setOrgver(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/orgver I
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "JMClassUpdateInfos [orgver="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/orgver I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", objectid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/objectid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", object="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/object I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", class_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/class_id I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", opt="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/opt I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
