.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/SmsQueryDetailBean
.super java/lang/Object

.field private 'merrorcode' I

.field private 'misRead' I

.field private 'mphone' Ljava/lang/String;

.field private 'mselfuid' J

.field private 'msmsid' Ljava/lang/String;

.field private 'mstatus' I

.field private 'mtime2' Ljava/lang/String;

.field private 'muid' J

.field private 'musername' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getErrorcode()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/merrorcode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getIsRead()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/misRead I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getPhone()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mphone Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getSelfuid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mselfuid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getSmsid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/msmsid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getStatus()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mstatus I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getTime2()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mtime2 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/muid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getUsername()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/musername Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final initValueByJson(Lorg/json/JSONObject;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/misRead I
aload 0
aload 1
ldc "phone"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mphone Ljava/lang/String;
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/muid J
aload 0
aload 1
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/musername Ljava/lang/String;
aload 0
aload 1
ldc "status"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mstatus I
aload 0
aload 1
ldc "time2"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mtime2 Ljava/lang/String;
aload 0
aload 1
ldc "errorcode"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/merrorcode I
return
.limit locals 2
.limit stack 3
.end method

.method public final setErrorcode(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/merrorcode I
return
.limit locals 2
.limit stack 2
.end method

.method public final setIsRead(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/misRead I
return
.limit locals 2
.limit stack 2
.end method

.method public final setPhone(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mphone Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setSelfuid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mselfuid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setSmsid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/msmsid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setStatus(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mstatus I
return
.limit locals 2
.limit stack 2
.end method

.method public final setTime2(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mtime2 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/muid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setUsername(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/musername Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final toString()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " smsid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/msmsid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " selfuid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mselfuid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " username="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/musername Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " phone="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mphone Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/muid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " status="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/mstatus I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
