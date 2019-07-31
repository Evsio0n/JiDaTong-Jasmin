.bytecode 50.0
.class synchronized com/nd/android/u/cloud/view/widge/QuickActions$2
.super java/lang/Object
.implements android/view/animation/Interpolator
.enclosing method com/nd/android/u/cloud/view/widge/QuickActions/<init>(Landroid/view/View;)V
.inner class inner com/nd/android/u/cloud/view/widge/QuickActions$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/QuickActions;

.method <init>(Lcom/nd/android/u/cloud/view/widge/QuickActions;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/QuickActions$2/this$0 Lcom/nd/android/u/cloud/view/widge/QuickActions;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getInterpolation(F)F
ldc_w 1.55F
fload 1
fmul
ldc_w 1.1F
fsub
fstore 1
ldc_w 1.2F
fload 1
fload 1
fmul
fsub
freturn
.limit locals 2
.limit stack 3
.end method
