.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapAppType
.super java/lang/Object

.field public 'mTypecode' Ljava/lang/String;

.field public 'mTypename' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
ldc "typecode"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapAppType/mTypecode Ljava/lang/String;
aload 0
aload 1
ldc "typename"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapAppType/mTypename Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public final getTypecode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapAppType/mTypecode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getTypename()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapAppType/mTypename Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final setTypecode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapAppType/mTypecode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setTypename(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapAppType/mTypename Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "OapAppType [typecode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapAppType/mTypecode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", typename="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapAppType/mTypename Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
