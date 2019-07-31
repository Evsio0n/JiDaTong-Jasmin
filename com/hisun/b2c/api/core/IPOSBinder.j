.bytecode 50.0
.class public synchronized com/hisun/b2c/api/core/IPOSBinder
.super com/hisun/b2c/api/core/IPOSBase
.inner class inner com/hisun/b2c/api/core/IPOSBinder$1
.inner class inner com/hisun/b2c/api/core/IPOSBinder$2
.inner class inner com/hisun/b2c/api/core/IPOSBinder$2$1
.inner class inner com/hisun/b2c/api/core/IPOSBinder$3

.field private 'lock' Ljava/lang/Integer;

.field private 'mCallback' Lcom/hisun/b2c/api/IRemoteServiceCallback;

.field private 'mConnection' Landroid/content/ServiceConnection;

.field private 'mIsBound' Z

.field private 'mService' Lcom/hisun/b2c/api/IRemoteService;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/hisun/b2c/api/core/IPOSBase/<init>(Landroid/content/Context;)V
aload 0
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield com/hisun/b2c/api/core/IPOSBinder/lock Ljava/lang/Integer;
aload 0
aconst_null
putfield com/hisun/b2c/api/core/IPOSBinder/mService Lcom/hisun/b2c/api/IRemoteService;
aload 0
new com/hisun/b2c/api/core/IPOSBinder$1
dup
aload 0
invokespecial com/hisun/b2c/api/core/IPOSBinder$1/<init>(Lcom/hisun/b2c/api/core/IPOSBinder;)V
putfield com/hisun/b2c/api/core/IPOSBinder/mConnection Landroid/content/ServiceConnection;
aload 0
new com/hisun/b2c/api/core/IPOSBinder$2
dup
aload 0
invokespecial com/hisun/b2c/api/core/IPOSBinder$2/<init>(Lcom/hisun/b2c/api/core/IPOSBinder;)V
putfield com/hisun/b2c/api/core/IPOSBinder/mCallback Lcom/hisun/b2c/api/IRemoteServiceCallback;
aload 0
ldc com/hisun/b2c/api/core/IPOSBinder
invokevirtual java/lang/Class/getName()Ljava/lang/String;
putfield com/hisun/b2c/api/core/IPOSBinder/tagName Ljava/lang/String;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$0(Lcom/hisun/b2c/api/core/IPOSBinder;)Ljava/lang/Integer;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/lock Ljava/lang/Integer;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/hisun/b2c/api/core/IPOSBinder;Lcom/hisun/b2c/api/IRemoteService;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBinder/mService Lcom/hisun/b2c/api/IRemoteService;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2(Lcom/hisun/b2c/api/core/IPOSBinder;)Lcom/hisun/b2c/api/IRemoteService;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/mService Lcom/hisun/b2c/api/IRemoteService;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/hisun/b2c/api/core/IPOSBinder;)Lcom/hisun/b2c/api/IRemoteServiceCallback;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/mCallback Lcom/hisun/b2c/api/IRemoteServiceCallback;
areturn
.limit locals 1
.limit stack 1
.end method

.method public bind()V
ldc com/hisun/b2c/api/IRemoteService
invokevirtual java/lang/Class/getName()Ljava/lang/String;
astore 1
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSBinder/getContext()Landroid/content/Context;
new android/content/Intent
dup
aload 1
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/mConnection Landroid/content/ServiceConnection;
iconst_1
invokevirtual android/content/Context/bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
pop
aload 0
iconst_1
putfield com/hisun/b2c/api/core/IPOSBinder/mIsBound Z
return
.limit locals 2
.limit stack 4
.end method

.method public bindAndPay(Ljava/lang/String;ILandroid/os/Handler;)V
aload 0
sipush 401
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "\u63d0\u793a"
aastore
dup
iconst_1
ldc "\u6b63\u5728\u53d1\u9001\u652f\u4ed8\u8bf7\u6c42,\u8bf7\u7a0d\u4faf..."
aastore
invokevirtual com/hisun/b2c/api/core/IPOSBinder/sendMessage(ILjava/lang/Object;)V
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSBinder/bind()V
new java/lang/Thread
dup
new com/hisun/b2c/api/core/IPOSBinder$3
dup
aload 0
aload 1
iload 2
aload 3
invokespecial com/hisun/b2c/api/core/IPOSBinder$3/<init>(Lcom/hisun/b2c/api/core/IPOSBinder;Ljava/lang/String;ILandroid/os/Handler;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 4
.limit stack 8
.end method

.method protected getTag()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/tagName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onDestroy()V
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSBinder/unbind()V
return
.limit locals 1
.limit stack 1
.end method

.method public unbind()V
.catch java/lang/Exception from L0 to L1 using L2
.catch android/os/RemoteException from L3 to L4 using L5
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/mIsBound Z
ifeq L9
L0:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/mService Lcom/hisun/b2c/api/IRemoteService;
astore 1
L1:
aload 1
ifnull L4
L3:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/mService Lcom/hisun/b2c/api/IRemoteService;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/mCallback Lcom/hisun/b2c/api/IRemoteServiceCallback;
invokeinterface com/hisun/b2c/api/IRemoteService/unregisterCallback(Lcom/hisun/b2c/api/IRemoteServiceCallback;)V 1
L4:
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSBinder/getContext()Landroid/content/Context;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder/mConnection Landroid/content/ServiceConnection;
invokevirtual android/content/Context/unbindService(Landroid/content/ServiceConnection;)V
aload 0
iconst_0
putfield com/hisun/b2c/api/core/IPOSBinder/mIsBound Z
L6:
return
L5:
astore 1
L7:
aload 1
invokevirtual android/os/RemoteException/printStackTrace()V
L8:
goto L4
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L9:
return
.limit locals 2
.limit stack 2
.end method
