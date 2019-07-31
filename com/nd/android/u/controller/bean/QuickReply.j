.bytecode 50.0
.class public synchronized com/nd/android/u/controller/bean/QuickReply
.super java/lang/Object

.field private 'mOrder' I

.field private 'mText' Ljava/lang/String;

.field private 'mUUID' Ljava/lang/String;

.field private 'mUid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
putfield com/nd/android/u/controller/bean/QuickReply/mUid J
aload 0
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/QuickReply/mUUID Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(J)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/QuickReply/mUid J
return
.limit locals 3
.limit stack 3
.end method

.method public getOrder()I
aload 0
getfield com/nd/android/u/controller/bean/QuickReply/mOrder I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getText()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/QuickReply/mText Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUUID()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/QuickReply/mUUID Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/controller/bean/QuickReply/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setOrder(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/QuickReply/mOrder I
return
.limit locals 2
.limit stack 2
.end method

.method public setText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/QuickReply/mText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUUID(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/QuickReply/mUUID Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
