.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/Passport
.super java/lang/Object

.field private 'account' Ljava/lang/String;

.field private 'blowfish' Ljava/lang/String;

.field private 'password' Ljava/lang/String;

.field private 'ticket' Ljava/lang/String;

.field private 'uap_sid' Ljava/lang/String;

.field private 'uap_uid' J

.field private 'uid' J

.field private 'unitid' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Passport/account Ljava/lang/String;
aload 0
aload 2
putfield com/nd/android/u/cloud/bean/Passport/password Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/bean/Passport/setLoginJson(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getAccount()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/account Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBlowfish()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/blowfish Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPassword()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/password Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTicket()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/ticket Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUap_sid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/uap_sid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUap_uid()J
aload 0
getfield com/nd/android/u/cloud/bean/Passport/uap_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/cloud/bean/Passport/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitid()I
aload 0
getfield com/nd/android/u/cloud/bean/Passport/unitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAccount(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Passport/account Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setBlowfish(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Passport/blowfish Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLoginJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "uap_uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/cloud/bean/Passport/uap_uid J
aload 0
aload 1
ldc "uap_sid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Passport/uap_sid Ljava/lang/String;
aload 0
aload 1
ldc "unitid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/bean/Passport/unitid I
aload 0
aload 1
ldc "uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/cloud/bean/Passport/uid J
aload 0
aload 1
ldc "ticket"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Passport/ticket Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public setPassword(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Passport/password Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTicket(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Passport/ticket Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUap_sid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Passport/uap_sid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUap_uid(J)V
aload 0
lload 1
putfield com/nd/android/u/cloud/bean/Passport/uap_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/cloud/bean/Passport/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUnitid(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/bean/Passport/unitid I
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " account="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/account Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " blowfish="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/blowfish Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " ticket="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/ticket Ljava/lang/String;
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
getfield com/nd/android/u/cloud/bean/Passport/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " uap_uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/uap_uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " uap_sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/bean/Passport/uap_sid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
