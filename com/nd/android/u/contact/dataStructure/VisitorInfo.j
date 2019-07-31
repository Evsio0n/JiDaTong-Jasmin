.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/VisitorInfo
.super java/lang/Object
.implements java/io/Serializable

.field private 'mdateline' J

.field private 'mfid' J

.field private 'mtuid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getDateline()J
aload 0
getfield com/nd/android/u/contact/dataStructure/VisitorInfo/mdateline J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getFid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/VisitorInfo/mfid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getTuid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/VisitorInfo/mtuid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final setDateline(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/VisitorInfo/mdateline J
return
.limit locals 3
.limit stack 3
.end method

.method public final setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/VisitorInfo/mfid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "tuid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/VisitorInfo/mtuid J
aload 0
aload 1
ldc "fuid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/VisitorInfo/mfid J
aload 0
aload 1
ldc "dateline"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/VisitorInfo/mdateline J
return
.limit locals 2
.limit stack 3
.end method

.method public final setTuid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/VisitorInfo/mtuid J
return
.limit locals 3
.limit stack 3
.end method
