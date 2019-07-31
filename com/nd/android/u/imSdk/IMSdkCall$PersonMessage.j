.bytecode 50.0
.class public synchronized com/nd/android/u/imSdk/IMSdkCall$PersonMessage
.super java/lang/Object
.inner class public static PersonMessage inner com/nd/android/u/imSdk/IMSdkCall$PersonMessage outer com/nd/android/u/imSdk/IMSdkCall

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static changeUserAvatar(II)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 2
aload 2
sipush 30011
putfield ims/bean/NDMessage/IMSCmd I
aload 2
iload 0
putfield ims/bean/NDMessage/optType I
aload 2
iload 1
putfield ims/bean/NDMessage/iPara I
aload 2
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 3
.limit stack 2
.end method

.method public static getLoginPoint(J)V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifeq L0
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 2
aload 2
ldc_w 36878
putfield ims/bean/NDMessage/IMSCmd I
aload 2
lload 0
putfield ims/bean/NDMessage/uidTo J
aload 2
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public static sendNotify(IJLjava/lang/String;)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 4
aload 4
bipush 32
putfield ims/bean/NDMessage/IMSCmd I
aload 4
iload 0
putfield ims/bean/NDMessage/messageContentType I
aload 4
lload 1
putfield ims/bean/NDMessage/uidTo J
aload 4
aload 3
putfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 4
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 5
.limit stack 3
.end method

.method public static subFriendStatus(J)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 2
aload 2
ldc_w 36867
putfield ims/bean/NDMessage/IMSCmd I
aload 2
lload 0
putfield ims/bean/NDMessage/uidTo J
aload 2
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 3
.limit stack 3
.end method
