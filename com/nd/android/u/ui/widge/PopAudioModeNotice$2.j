.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/PopAudioModeNotice$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/widge/PopAudioModeNotice/show()V
.inner class inner com/nd/android/u/ui/widge/PopAudioModeNotice$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/PopAudioModeNotice;

.method <init>(Lcom/nd/android/u/ui/widge/PopAudioModeNotice;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/PopAudioModeNotice$2/this$0 Lcom/nd/android/u/ui/widge/PopAudioModeNotice;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice$2/this$0 Lcom/nd/android/u/ui/widge/PopAudioModeNotice;
invokestatic com/nd/android/u/ui/widge/PopAudioModeNotice/access$000(Lcom/nd/android/u/ui/widge/PopAudioModeNotice;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 1
.end method
