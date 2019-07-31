.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSBinder$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/hisun/b2c/api/core/IPOSBinder/bindAndPay(Ljava/lang/String;ILandroid/os/Handler;)V
.inner class inner com/hisun/b2c/api/core/IPOSBinder$3

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/IPOSBinder;

.field private final synthetic 'val$callback' Landroid/os/Handler;

.field private final synthetic 'val$myWhat' I

.field private final synthetic 'val$order' Ljava/lang/String;

.method <init>(Lcom/hisun/b2c/api/core/IPOSBinder;Ljava/lang/String;ILandroid/os/Handler;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
aload 0
aload 2
putfield com/hisun/b2c/api/core/IPOSBinder$3/val$order Ljava/lang/String;
aload 0
iload 3
putfield com/hisun/b2c/api/core/IPOSBinder$3/val$myWhat I
aload 0
aload 4
putfield com/hisun/b2c/api/core/IPOSBinder$3/val$callback Landroid/os/Handler;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L1 to L4 using L5
.catch android/os/RemoteException from L4 to L6 using L7
.catch java/lang/Exception from L4 to L6 using L2
.catch all from L4 to L6 using L3
.catch java/lang/Exception from L6 to L8 using L2
.catch all from L6 to L8 using L3
.catch all from L9 to L10 using L5
.catch all from L11 to L12 using L5
.catch java/lang/Exception from L12 to L2 using L2
.catch all from L12 to L2 using L3
.catch all from L13 to L14 using L3
.catch java/lang/Exception from L15 to L16 using L2
.catch all from L15 to L16 using L3
L0:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$0(Lcom/hisun/b2c/api/core/IPOSBinder;)Ljava/lang/Integer;
astore 1
aload 1
monitorenter
L1:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$2(Lcom/hisun/b2c/api/core/IPOSBinder;)Lcom/hisun/b2c/api/IRemoteService;
ifnull L9
aload 1
monitorexit
L4:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$2(Lcom/hisun/b2c/api/core/IPOSBinder;)Lcom/hisun/b2c/api/IRemoteService;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$3(Lcom/hisun/b2c/api/core/IPOSBinder;)Lcom/hisun/b2c/api/IRemoteServiceCallback;
invokeinterface com/hisun/b2c/api/IRemoteService/registerCallback(Lcom/hisun/b2c/api/IRemoteServiceCallback;)V 1
L6:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$2(Lcom/hisun/b2c/api/core/IPOSBinder;)Lcom/hisun/b2c/api/IRemoteService;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/val$order Ljava/lang/String;
invokeinterface com/hisun/b2c/api/IRemoteService/IPay(Ljava/lang/String;)Ljava/lang/String; 1
astore 1
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokevirtual com/hisun/b2c/api/core/IPOSBinder/unbind()V
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/val$myWhat I
aload 1
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/val$callback Landroid/os/Handler;
invokevirtual com/hisun/b2c/api/core/IPOSBinder/sendMessage(ILjava/lang/Object;Landroid/os/Handler;)V
L8:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
aconst_null
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$1(Lcom/hisun/b2c/api/core/IPOSBinder;Lcom/hisun/b2c/api/IRemoteService;)V
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokevirtual com/hisun/b2c/api/core/IPOSBinder/closeProgress()V
return
L9:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$0(Lcom/hisun/b2c/api/core/IPOSBinder;)Ljava/lang/Integer;
invokevirtual java/lang/Object/wait()V
L10:
goto L1
L5:
astore 2
L11:
aload 1
monitorexit
L12:
aload 2
athrow
L2:
astore 1
L13:
aload 1
getstatic java/lang/System/out Ljava/io/PrintStream;
invokevirtual java/lang/Exception/printStackTrace(Ljava/io/PrintStream;)V
L14:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
aconst_null
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$1(Lcom/hisun/b2c/api/core/IPOSBinder;Lcom/hisun/b2c/api/IRemoteService;)V
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokevirtual com/hisun/b2c/api/core/IPOSBinder/closeProgress()V
return
L7:
astore 1
L15:
aload 1
invokevirtual android/os/RemoteException/printStackTrace()V
L16:
goto L6
L3:
astore 1
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
aconst_null
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$1(Lcom/hisun/b2c/api/core/IPOSBinder;Lcom/hisun/b2c/api/IRemoteService;)V
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$3/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokevirtual com/hisun/b2c/api/core/IPOSBinder/closeProgress()V
aload 1
athrow
.limit locals 3
.limit stack 4
.end method
