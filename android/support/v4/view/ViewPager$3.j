.bytecode 50.0
.class synchronized android/support/v4/view/ViewPager$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method android/support/v4/view/ViewPager
.inner class inner android/support/v4/view/ViewPager$3

.field final synthetic 'this$0' Landroid/support/v4/view/ViewPager;

.method <init>(Landroid/support/v4/view/ViewPager;)V
aload 0
aload 1
putfield android/support/v4/view/ViewPager$3/this$0 Landroid/support/v4/view/ViewPager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield android/support/v4/view/ViewPager$3/this$0 Landroid/support/v4/view/ViewPager;
iconst_0
invokestatic android/support/v4/view/ViewPager/access$000(Landroid/support/v4/view/ViewPager;I)V
aload 0
getfield android/support/v4/view/ViewPager$3/this$0 Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/populate()V
return
.limit locals 1
.limit stack 2
.end method
