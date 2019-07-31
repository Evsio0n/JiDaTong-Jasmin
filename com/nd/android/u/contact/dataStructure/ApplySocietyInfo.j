.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/ApplySocietyInfo
.super java/lang/Object

.field public 'applyid' J

.field public 'comment' Ljava/lang/String;

.field public 'gname' Ljava/lang/String;

.field public 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/contact/dataStructure/ApplySocietyInfo/applyid J
aload 0
lconst_0
putfield com/nd/android/u/contact/dataStructure/ApplySocietyInfo/uid J
aload 0
ldc ""
putfield com/nd/android/u/contact/dataStructure/ApplySocietyInfo/gname Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/contact/dataStructure/ApplySocietyInfo/comment Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public final LoadFromJson(Lorg/json/JSONObject;)V
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
aload 1
ldc "applyid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/ApplySocietyInfo/applyid J
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/ApplySocietyInfo/uid J
aload 0
aload 1
ldc "gname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/ApplySocietyInfo/gname Ljava/lang/String;
aload 0
aload 1
ldc "comment"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/ApplySocietyInfo/comment Ljava/lang/String;
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
