.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/RotateImageView$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/widge/RotateImageView
.inner class inner com/nd/android/u/ui/widge/RotateImageView$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/RotateImageView;

.method <init>(Lcom/nd/android/u/ui/widge/RotateImageView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/RotateImageView$1/this$0 Lcom/nd/android/u/ui/widge/RotateImageView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L2
.catch java/lang/InterruptedException from L4 to L5 using L2
L0:
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView$1/this$0 Lcom/nd/android/u/ui/widge/RotateImageView;
invokestatic com/nd/android/u/ui/widge/RotateImageView/access$000(Lcom/nd/android/u/ui/widge/RotateImageView;)Z
ifne L3
L1:
return
L3:
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView$1/this$0 Lcom/nd/android/u/ui/widge/RotateImageView;
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView$1/this$0 Lcom/nd/android/u/ui/widge/RotateImageView;
invokestatic com/nd/android/u/ui/widge/RotateImageView/access$100(Lcom/nd/android/u/ui/widge/RotateImageView;)I
bipush 10
iadd
invokestatic com/nd/android/u/ui/widge/RotateImageView/access$102(Lcom/nd/android/u/ui/widge/RotateImageView;I)I
pop
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView$1/this$0 Lcom/nd/android/u/ui/widge/RotateImageView;
invokestatic com/nd/android/u/ui/widge/RotateImageView/access$100(Lcom/nd/android/u/ui/widge/RotateImageView;)I
sipush 360
if_icmple L4
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView$1/this$0 Lcom/nd/android/u/ui/widge/RotateImageView;
iconst_0
invokestatic com/nd/android/u/ui/widge/RotateImageView/access$102(Lcom/nd/android/u/ui/widge/RotateImageView;I)I
pop
L4:
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView$1/this$0 Lcom/nd/android/u/ui/widge/RotateImageView;
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView$1/this$0 Lcom/nd/android/u/ui/widge/RotateImageView;
invokestatic com/nd/android/u/ui/widge/RotateImageView/access$100(Lcom/nd/android/u/ui/widge/RotateImageView;)I
invokevirtual com/nd/android/u/ui/widge/RotateImageView/setDegree(I)V
ldc2_w 50L
invokestatic java/lang/Thread/sleep(J)V
L5:
goto L0
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method
