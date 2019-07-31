.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/StickyLayout$1
.super java/lang/Thread
.enclosing method com/nd/android/u/contact/view/StickyLayout/smoothSetHeaderHeight(IIJZ)V
.inner class inner com/nd/android/u/contact/view/StickyLayout$1
.inner class inner com/nd/android/u/contact/view/StickyLayout$1$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/StickyLayout;

.field final synthetic 'val$frameCount' I

.field final synthetic 'val$from' I

.field final synthetic 'val$modifyOriginalHeaderHeight' Z

.field final synthetic 'val$partation' F

.field final synthetic 'val$to' I

.method <init>(Lcom/nd/android/u/contact/view/StickyLayout;Ljava/lang/String;IIIFZ)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/StickyLayout$1/this$0 Lcom/nd/android/u/contact/view/StickyLayout;
aload 0
iload 3
putfield com/nd/android/u/contact/view/StickyLayout$1/val$frameCount I
aload 0
iload 4
putfield com/nd/android/u/contact/view/StickyLayout$1/val$to I
aload 0
iload 5
putfield com/nd/android/u/contact/view/StickyLayout$1/val$from I
aload 0
fload 6
putfield com/nd/android/u/contact/view/StickyLayout$1/val$partation F
aload 0
iload 7
putfield com/nd/android/u/contact/view/StickyLayout$1/val$modifyOriginalHeaderHeight Z
aload 0
aload 2
invokespecial java/lang/Thread/<init>(Ljava/lang/String;)V
return
.limit locals 8
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
iconst_0
istore 1
L3:
iload 1
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1/val$frameCount I
if_icmpge L4
iload 1
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1/val$frameCount I
iconst_1
isub
if_icmpne L5
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1/val$to I
istore 2
L6:
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1/this$0 Lcom/nd/android/u/contact/view/StickyLayout;
new com/nd/android/u/contact/view/StickyLayout$1$1
dup
aload 0
iload 2
invokespecial com/nd/android/u/contact/view/StickyLayout$1$1/<init>(Lcom/nd/android/u/contact/view/StickyLayout$1;I)V
invokevirtual com/nd/android/u/contact/view/StickyLayout/post(Ljava/lang/Runnable;)Z
pop
L0:
ldc2_w 10L
invokestatic com/nd/android/u/contact/view/StickyLayout$1/sleep(J)V
L1:
iload 1
iconst_1
iadd
istore 1
goto L3
L5:
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1/val$from I
i2f
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1/val$partation F
iload 1
i2f
fmul
fadd
f2i
istore 2
goto L6
L2:
astore 3
aload 3
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
L4:
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1/val$modifyOriginalHeaderHeight Z
ifeq L7
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1/this$0 Lcom/nd/android/u/contact/view/StickyLayout;
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1/val$to I
invokevirtual com/nd/android/u/contact/view/StickyLayout/setOriginalHeaderHeight(I)V
L7:
return
.limit locals 4
.limit stack 5
.end method
