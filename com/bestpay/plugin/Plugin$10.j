.bytecode 50.0
.class synchronized com/bestpay/plugin/Plugin$10
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/bestpay/plugin/Plugin/alertUpdateDialog(Lcom/bestpay/plugin/CallBack;)V
.inner class inner com/bestpay/plugin/Plugin$10

.field final synthetic 'this$0' Lcom/bestpay/plugin/Plugin;

.field private final synthetic 'val$callback' Lcom/bestpay/plugin/CallBack;

.method <init>(Lcom/bestpay/plugin/Plugin;Lcom/bestpay/plugin/CallBack;)V
aload 0
aload 1
putfield com/bestpay/plugin/Plugin$10/this$0 Lcom/bestpay/plugin/Plugin;
aload 0
aload 2
putfield com/bestpay/plugin/Plugin$10/val$callback Lcom/bestpay/plugin/CallBack;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
.catch java/lang/Exception from L0 to L1 using L2
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
getstatic com/bestpay/plugin/Plugin/mContext Landroid/content/Context;
ldc "SD\u5361\u4e0d\u5b58\u5728"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
aload 0
getfield com/bestpay/plugin/Plugin$10/val$callback Lcom/bestpay/plugin/CallBack;
invokeinterface com/bestpay/plugin/CallBack/execute()Z 0
pop
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 4
.limit stack 3
.end method
