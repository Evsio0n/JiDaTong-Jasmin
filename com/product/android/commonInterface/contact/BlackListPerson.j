.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/BlackListPerson
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1564365647471687022L


.field public 'myoapid' J

.field public 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/product/android/commonInterface/contact/BlackListPerson/uid J
aload 0
lconst_0
putfield com/product/android/commonInterface/contact/BlackListPerson/myoapid J
return
.limit locals 1
.limit stack 3
.end method

.method public LoadFromJson(Lorg/json/JSONObject;)V
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/BlackListPerson/uid J
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method
