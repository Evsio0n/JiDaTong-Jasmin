.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSUtils$3
.super java/lang/Object
.implements android/content/DialogInterface$OnCancelListener
.enclosing method com/hisun/b2c/api/core/IPOSUtils/iPay(Ljava/lang/String;ILandroid/os/Handler;)V
.inner class inner com/hisun/b2c/api/core/IPOSUtils$3

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/IPOSUtils;

.method <init>(Lcom/hisun/b2c/api/core/IPOSUtils;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSUtils$3/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$3/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
iconst_1
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$11(Lcom/hisun/b2c/api/core/IPOSUtils;Z)V
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$3/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$2(Lcom/hisun/b2c/api/core/IPOSUtils;)Lcom/hisun/b2c/api/core/NetworkManager;
ifnull L0
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$3/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$2(Lcom/hisun/b2c/api/core/IPOSUtils;)Lcom/hisun/b2c/api/core/NetworkManager;
invokevirtual com/hisun/b2c/api/core/NetworkManager/cancel()V
L0:
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$3/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$8(Lcom/hisun/b2c/api/core/IPOSUtils;)Landroid/os/Handler;
ifnull L1
aload 0
getfield com/hisun/b2c/api/core/IPOSUtils$3/this$0 Lcom/hisun/b2c/api/core/IPOSUtils;
invokestatic com/hisun/b2c/api/core/IPOSUtils/access$8(Lcom/hisun/b2c/api/core/IPOSUtils;)Landroid/os/Handler;
ldc_w 619068
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L1:
return
.limit locals 2
.limit stack 2
.end method
