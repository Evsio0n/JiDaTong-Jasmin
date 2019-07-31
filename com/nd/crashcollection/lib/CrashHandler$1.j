.bytecode 50.0
.class synchronized com/nd/crashcollection/lib/CrashHandler$1
.super java/lang/Thread
.enclosing method com/nd/crashcollection/lib/CrashHandler/handleException(Ljava/lang/Throwable;Z)Z
.inner class inner com/nd/crashcollection/lib/CrashHandler$1

.field final synthetic 'this$0' Lcom/nd/crashcollection/lib/CrashHandler;

.field private final synthetic 'val$tip' Ljava/lang/String;

.method <init>(Lcom/nd/crashcollection/lib/CrashHandler;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/crashcollection/lib/CrashHandler$1/this$0 Lcom/nd/crashcollection/lib/CrashHandler;
aload 0
aload 2
putfield com/nd/crashcollection/lib/CrashHandler$1/val$tip Ljava/lang/String;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
invokestatic android/os/Looper/prepare()V
aload 0
getfield com/nd/crashcollection/lib/CrashHandler$1/this$0 Lcom/nd/crashcollection/lib/CrashHandler;
invokestatic com/nd/crashcollection/lib/CrashHandler/access$0(Lcom/nd/crashcollection/lib/CrashHandler;)Landroid/content/Context;
aload 0
getfield com/nd/crashcollection/lib/CrashHandler$1/val$tip Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
invokestatic android/os/Looper/loop()V
return
.limit locals 1
.limit stack 3
.end method
