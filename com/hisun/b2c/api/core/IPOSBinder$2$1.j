.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSBinder$2$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/hisun/b2c/api/core/IPOSBinder$2/startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
.inner class inner com/hisun/b2c/api/core/IPOSBinder$2
.inner class inner com/hisun/b2c/api/core/IPOSBinder$2$1

.field final synthetic 'this$1' Lcom/hisun/b2c/api/core/IPOSBinder$2;

.method <init>(Lcom/hisun/b2c/api/core/IPOSBinder$2;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBinder$2$1/this$1 Lcom/hisun/b2c/api/core/IPOSBinder$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/hisun/b2c/api/core/IPOSBinder$2$1/this$1 Lcom/hisun/b2c/api/core/IPOSBinder$2;
invokestatic com/hisun/b2c/api/core/IPOSBinder$2/access$0(Lcom/hisun/b2c/api/core/IPOSBinder$2;)Lcom/hisun/b2c/api/core/IPOSBinder;
invokevirtual com/hisun/b2c/api/core/IPOSBinder/closeProgress()V
return
.limit locals 1
.limit stack 1
.end method
