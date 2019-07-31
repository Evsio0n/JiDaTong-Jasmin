.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/PhoneInfo
.super java/lang/Object
.implements java/io/Serializable

.field private 'mbegintime' Ljava/util/Date;

.field private 'mendtime' J

.field private 'mid' I

.field private 'mselfuid' J

.field private 'mtelephonenum' Ljava/lang/String;

.field private 'mtype' I

.field private 'muid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getBegintime()Ljava/util/Date;
aload 0
getfield com/nd/android/u/contact/dataStructure/PhoneInfo/mbegintime Ljava/util/Date;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getEndtime()J
aload 0
getfield com/nd/android/u/contact/dataStructure/PhoneInfo/mendtime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getId()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhoneInfo/mid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getSelfuid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/PhoneInfo/mselfuid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getTelephonenum()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/PhoneInfo/mtelephonenum Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getType()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhoneInfo/mtype I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/PhoneInfo/muid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final setBegintime(Ljava/util/Date;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/PhoneInfo/mbegintime Ljava/util/Date;
return
.limit locals 2
.limit stack 2
.end method

.method public final setEndtime(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/PhoneInfo/mendtime J
return
.limit locals 3
.limit stack 3
.end method

.method public final setId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/PhoneInfo/mid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setSelfuid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/PhoneInfo/mselfuid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setTelephonenum(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/PhoneInfo/mtelephonenum Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/PhoneInfo/mtype I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/PhoneInfo/muid J
return
.limit locals 3
.limit stack 3
.end method

.method public final toString()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
