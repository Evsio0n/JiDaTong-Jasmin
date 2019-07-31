.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/JMClass
.super java/lang/Object

.field private 'classes' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/JMClass;>;"

.field private 'id' I

.field private 'uids' [I

.method public <init>(Lorg/json/JSONObject;)V
.throws org/json/JSONException
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
ldc "id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/JMClass/id I
aload 1
ldc "uids"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
iconst_1
newarray int
astore 3
aload 3
iconst_0
aload 1
invokevirtual org/json/JSONArray/length()I
iastore
iconst_0
istore 2
L0:
iload 2
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L1
aload 3
iload 2
aload 1
iload 2
invokevirtual org/json/JSONArray/getInt(I)I
iastore
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
aload 3
putfield com/nd/android/u/contact/dataStructure/JMClass/uids [I
return
.limit locals 4
.limit stack 4
.end method

.method public getClasses()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/JMClass;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClass/classes Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()I
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClass/id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUids()[I
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClass/uids [I
areturn
.limit locals 1
.limit stack 1
.end method

.method public setClasses(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/JMClass;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/JMClass/classes Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/JMClass/id I
return
.limit locals 2
.limit stack 2
.end method

.method public setUids([I)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/JMClass/uids [I
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "JMClass [id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClass/id I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", uids="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClass/uids [I
invokestatic java/util/Arrays/toString([I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", classes="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/JMClass/classes Ljava/util/List;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
