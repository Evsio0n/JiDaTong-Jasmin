.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/messageTip/MessageTip$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/messageTip/MessageTip
.inner class inner com/nd/android/u/ui/widge/messageTip/MessageTip$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/messageTip/MessageTip;

.method <init>(Lcom/nd/android/u/ui/widge/messageTip/MessageTip;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/messageTip/MessageTip$1/this$0 Lcom/nd/android/u/ui/widge/messageTip/MessageTip;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
ldc "@@"
ldc "msg tip click!"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 2
.end method
