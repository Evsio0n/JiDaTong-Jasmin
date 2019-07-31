.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSBinder$1
.super java/lang/Object
.implements android/content/ServiceConnection
.enclosing method com/hisun/b2c/api/core/IPOSBinder
.inner class inner com/hisun/b2c/api/core/IPOSBinder$1

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/IPOSBinder;

.method <init>(Lcom/hisun/b2c/api/core/IPOSBinder;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBinder$1/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$1/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$0(Lcom/hisun/b2c/api/core/IPOSBinder;)Ljava/lang/Integer;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$1/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
aload 2
invokestatic com/hisun/b2c/api/IRemoteService$Stub/asInterface(Landroid/os/IBinder;)Lcom/hisun/b2c/api/IRemoteService;
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$1(Lcom/hisun/b2c/api/core/IPOSBinder;Lcom/hisun/b2c/api/IRemoteService;)V
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$1/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$0(Lcom/hisun/b2c/api/core/IPOSBinder;)Ljava/lang/Integer;
invokevirtual java/lang/Object/notify()V
aload 1
monitorexit
L1:
return
L2:
astore 2
L3:
aload 1
monitorexit
L4:
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$1/this$0 Lcom/hisun/b2c/api/core/IPOSBinder;
aconst_null
invokestatic com/hisun/b2c/api/core/IPOSBinder/access$1(Lcom/hisun/b2c/api/core/IPOSBinder;Lcom/hisun/b2c/api/IRemoteService;)V
return
.limit locals 2
.limit stack 2
.end method
