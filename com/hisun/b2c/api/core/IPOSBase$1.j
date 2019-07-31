.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSBase$1
.super android/os/Handler
.enclosing method com/hisun/b2c/api/core/IPOSBase
.inner class inner com/hisun/b2c/api/core/IPOSBase$1

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/IPOSBase;

.method <init>(Lcom/hisun/b2c/api/core/IPOSBase;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBase$1/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
sipush 401
if_icmpne L0
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast [Ljava/lang/String;
astore 1
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$1/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$1/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
invokestatic com/hisun/b2c/api/core/IPOSBase/access$0(Lcom/hisun/b2c/api/core/IPOSBase;)Landroid/content/Context;
aload 1
iconst_0
aaload
aload 1
iconst_1
aaload
iconst_1
iconst_0
invokestatic com/hisun/b2c/api/util/IPOSHelper/showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
invokestatic com/hisun/b2c/api/core/IPOSBase/access$1(Lcom/hisun/b2c/api/core/IPOSBase;Landroid/app/ProgressDialog;)V
L1:
return
L0:
aload 1
getfield android/os/Message/what I
sipush 402
if_icmpne L2
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$1/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
invokevirtual com/hisun/b2c/api/core/IPOSBase/closeProgress()V
return
L2:
aload 1
getfield android/os/Message/what I
sipush 403
if_icmpne L3
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$1/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
invokevirtual com/hisun/b2c/api/core/IPOSBase/closeProgress()V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
astore 1
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$1/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
aload 1
invokestatic com/hisun/b2c/api/core/IPOSBase/access$2(Lcom/hisun/b2c/api/core/IPOSBase;Ljava/lang/String;)V
return
L3:
aload 1
getfield android/os/Message/what I
sipush 404
if_icmpne L1
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast [Ljava/lang/Object;
astore 1
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$1/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$1/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
invokestatic com/hisun/b2c/api/core/IPOSBase/access$0(Lcom/hisun/b2c/api/core/IPOSBase;)Landroid/content/Context;
aload 1
iconst_0
aaload
checkcast java/lang/String
aload 1
iconst_1
aaload
checkcast java/lang/String
iconst_1
iconst_1
aload 1
iconst_2
aaload
checkcast android/content/DialogInterface$OnCancelListener
invokestatic com/hisun/b2c/api/util/IPOSHelper/showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
invokestatic com/hisun/b2c/api/core/IPOSBase/access$1(Lcom/hisun/b2c/api/core/IPOSBase;Landroid/app/ProgressDialog;)V
return
.limit locals 2
.limit stack 8
.end method
