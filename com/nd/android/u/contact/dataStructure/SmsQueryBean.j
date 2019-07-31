.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/SmsQueryBean
.super java/lang/Object

.field private 'mfailed' I

.field private 'mreply' I

.field private 'msmsbody' Ljava/lang/String;

.field private 'mstatus' I

.field private 'msuccess' I

.field private 'mtime1' Ljava/lang/String;

.field private 'mtotal' I

.field private 'receiver_admit' I

.field private 'receiver_type' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getFailed()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mfailed I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getReceiver_admit()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryBean/receiver_admit I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getReceiver_type()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryBean/receiver_type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getReply()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mreply I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getSmsbody()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryBean/msmsbody Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getStatus()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mstatus I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getSuccess()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryBean/msuccess I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getTime1()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mtime1 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getTotal()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mtotal I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final initValueByJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "receiver_type"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/receiver_type I
aload 0
aload 1
ldc "smsbody"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/msmsbody Ljava/lang/String;
aload 0
aload 1
ldc "name"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/receiver_admit I
aload 0
aload 1
ldc "status"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mstatus I
aload 0
aload 1
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mtotal I
aload 0
aload 1
ldc "success"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/msuccess I
aload 0
aload 1
ldc "failed"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mfailed I
aload 0
aload 1
ldc "reply"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mreply I
return
.limit locals 2
.limit stack 3
.end method

.method public final initValueByReplyJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "smsbody"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/msmsbody Ljava/lang/String;
aload 0
aload 1
ldc "status"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mstatus I
return
.limit locals 2
.limit stack 3
.end method

.method public final setFailed(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mfailed I
return
.limit locals 2
.limit stack 2
.end method

.method public final setReceiver_admit(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/receiver_admit I
return
.limit locals 2
.limit stack 2
.end method

.method public final setReceiver_type(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/receiver_type I
return
.limit locals 2
.limit stack 2
.end method

.method public final setReply(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mreply I
return
.limit locals 2
.limit stack 2
.end method

.method public final setSmsbody(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/msmsbody Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setStatus(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mstatus I
return
.limit locals 2
.limit stack 2
.end method

.method public final setSuccess(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/msuccess I
return
.limit locals 2
.limit stack 2
.end method

.method public final setTime1(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mtime1 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setTotal(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SmsQueryBean/mtotal I
return
.limit locals 2
.limit stack 2
.end method
