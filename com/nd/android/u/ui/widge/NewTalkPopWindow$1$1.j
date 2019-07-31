.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/NewTalkPopWindow$1$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/ui/widge/NewTalkPopWindow$1/onRecordSuccess(Ljava/lang/String;J)V
.inner class inner com/nd/android/u/ui/widge/NewTalkPopWindow$1
.inner class inner com/nd/android/u/ui/widge/NewTalkPopWindow$1$1

.field final synthetic 'this$1' Lcom/nd/android/u/ui/widge/NewTalkPopWindow$1;

.field final synthetic 'val$path' Ljava/lang/String;

.field final synthetic 'val$time' J

.method <init>(Lcom/nd/android/u/ui/widge/NewTalkPopWindow$1;Ljava/lang/String;J)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/NewTalkPopWindow$1$1/this$1 Lcom/nd/android/u/ui/widge/NewTalkPopWindow$1;
aload 0
aload 2
putfield com/nd/android/u/ui/widge/NewTalkPopWindow$1$1/val$path Ljava/lang/String;
aload 0
lload 3
putfield com/nd/android/u/ui/widge/NewTalkPopWindow$1$1/val$time J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1$1/this$1 Lcom/nd/android/u/ui/widge/NewTalkPopWindow$1;
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1$1/val$path Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1$1/val$time J
iconst_0
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$500(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;Ljava/lang/String;JI)V
return
.limit locals 3
.limit stack 5
.end method
