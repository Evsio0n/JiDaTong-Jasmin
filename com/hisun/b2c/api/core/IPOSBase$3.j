.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSBase$3
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/hisun/b2c/api/core/IPOSBase/showInstallConfirmDialog(Ljava/lang/String;)V
.inner class inner com/hisun/b2c/api/core/IPOSBase$3

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/IPOSBase;

.method <init>(Lcom/hisun/b2c/api/core/IPOSBase;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBase$3/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$3/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
getfield com/hisun/b2c/api/core/IPOSBase/iposUtils Lcom/hisun/b2c/api/core/IPOSUtils;
invokevirtual com/hisun/b2c/api/core/IPOSUtils/cancel()V
return
.limit locals 3
.limit stack 1
.end method
