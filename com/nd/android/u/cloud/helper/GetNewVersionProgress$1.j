.bytecode 50.0
.class synchronized com/nd/android/u/cloud/helper/GetNewVersionProgress$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/cloud/helper/GetNewVersionProgress/doSuccess()V
.inner class inner com/nd/android/u/cloud/helper/GetNewVersionProgress$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;

.method <init>(Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/GetNewVersionProgress$1/this$0 Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress$1/this$0 Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;
invokestatic com/nd/android/u/cloud/helper/GetNewVersionProgress/access$000(Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;)Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 4
aload 4
astore 3
aload 4
ldc "http://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L0
aload 4
ldc "http://"
ldc "https://"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 3
L0:
ldc "ppp"
aload 3
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress$1/this$0 Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;
aload 3
invokestatic com/nd/android/u/cloud/helper/GetNewVersionProgress/access$100(Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;Ljava/lang/String;)V
aload 1
invokeinterface android/content/DialogInterface/cancel()V 0
return
.limit locals 5
.limit stack 3
.end method
