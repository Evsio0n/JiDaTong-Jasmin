.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/SmsReplyBean
.super java/lang/Object
.implements java/io/Serializable

.field private 'phone1' Ljava/lang/String;

.field private 'phone2' Ljava/lang/String;

.field private 'replyid' Ljava/lang/String;

.field private 'smsbody' Ljava/lang/String;

.field private 'status' I

.field private 'time1' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/SmsReplyBean/smsbody Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getPhone1()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/SmsReplyBean/phone1 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPhone2()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/SmsReplyBean/phone2 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReplyid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/SmsReplyBean/replyid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSmsbody()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/SmsReplyBean/smsbody Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStatus()I
aload 0
getfield com/nd/android/u/cloud/bean/SmsReplyBean/status I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTime1()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/SmsReplyBean/time1 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initReplyDetailByJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "status"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/bean/SmsReplyBean/status I
aload 0
aload 1
ldc "smsbody"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/SmsReplyBean/smsbody Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public initValueByJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "replyid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/SmsReplyBean/replyid Ljava/lang/String;
aload 0
aload 1
ldc "phone2"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/SmsReplyBean/phone2 Ljava/lang/String;
aload 0
aload 1
ldc "phone1"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/SmsReplyBean/phone1 Ljava/lang/String;
aload 0
aload 1
ldc "status"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/bean/SmsReplyBean/status I
aload 0
aload 1
ldc "time1"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/SmsReplyBean/time1 Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public setPhone1(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/SmsReplyBean/phone1 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPhone2(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/SmsReplyBean/phone2 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setReplyid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/SmsReplyBean/replyid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSmsbody(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/SmsReplyBean/smsbody Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setStatus(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/bean/SmsReplyBean/status I
return
.limit locals 2
.limit stack 2
.end method

.method public setTime1(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/SmsReplyBean/time1 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
