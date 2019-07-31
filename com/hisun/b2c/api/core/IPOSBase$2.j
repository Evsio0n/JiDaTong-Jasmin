.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/IPOSBase$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/hisun/b2c/api/core/IPOSBase/showInstallConfirmDialog(Ljava/lang/String;)V
.inner class inner com/hisun/b2c/api/core/IPOSBase$2

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/IPOSBase;

.field private final synthetic 'val$cachePath' Ljava/lang/String;

.method <init>(Lcom/hisun/b2c/api/core/IPOSBase;Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBase$2/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
aload 0
aload 2
putfield com/hisun/b2c/api/core/IPOSBase$2/val$cachePath Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$2/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$2/val$cachePath Ljava/lang/String;
invokestatic com/hisun/b2c/api/core/IPOSBase/access$3(Lcom/hisun/b2c/api/core/IPOSBase;Ljava/lang/String;)V
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 1
new java/lang/StringBuilder
dup
ldc "file://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$2/val$cachePath Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
ldc "application/vnd.android.package-archive"
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/hisun/b2c/api/core/IPOSBase$2/this$0 Lcom/hisun/b2c/api/core/IPOSBase;
invokevirtual com/hisun/b2c/api/core/IPOSBase/getContext()Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method
