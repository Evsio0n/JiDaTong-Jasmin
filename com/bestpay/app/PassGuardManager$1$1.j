.bytecode 50.0
.class synchronized com/bestpay/app/PassGuardManager$1$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/bestpay/app/PassGuardManager$1/doActionFunction()V
.inner class inner com/bestpay/app/PassGuardManager$1
.inner class inner com/bestpay/app/PassGuardManager$1$1

.field final synthetic 'this$1' Lcom/bestpay/app/PassGuardManager$1;

.field private final synthetic 'val$id' Ljava/lang/String;

.method <init>(Lcom/bestpay/app/PassGuardManager$1;Ljava/lang/String;)V
aload 0
aload 1
putfield com/bestpay/app/PassGuardManager$1$1/this$1 Lcom/bestpay/app/PassGuardManager$1;
aload 0
aload 2
putfield com/bestpay/app/PassGuardManager$1$1/val$id Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
ldc_w 1362368045
aload 0
getfield com/bestpay/app/PassGuardManager$1$1/val$id Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
if_icmpne L0
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
astore 1
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
ldc_w -100.0F
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 2
aload 2
ldc2_w 100L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 1
aload 2
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/bestpay/app/PassGuardManager$1$1/this$1 Lcom/bestpay/app/PassGuardManager$1;
invokestatic com/bestpay/app/PassGuardManager$1/access$0(Lcom/bestpay/app/PassGuardManager$1;)Lcom/bestpay/app/PassGuardManager;
invokestatic com/bestpay/app/PassGuardManager/access$1(Lcom/bestpay/app/PassGuardManager;)Landroid/webkit/WebView;
aload 1
invokevirtual android/webkit/WebView/startAnimation(Landroid/view/animation/Animation;)V
L0:
return
.limit locals 3
.limit stack 6
.end method
