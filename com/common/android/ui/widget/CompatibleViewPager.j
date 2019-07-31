.bytecode 50.0
.class public synchronized com/common/android/ui/widget/CompatibleViewPager
.super android/support/v4/view/ViewPager

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/support/v4/view/ViewPager/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/support/v4/view/ViewPager/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/ArrayIndexOutOfBoundsException from L0 to L1 using L3
L0:
aload 0
aload 1
invokespecial android/support/v4/view/ViewPager/onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
istore 2
L1:
iload 2
ireturn
L2:
astore 1
iconst_0
ireturn
L3:
astore 1
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/ArrayIndexOutOfBoundsException from L0 to L1 using L3
L0:
aload 0
aload 1
invokespecial android/support/v4/view/ViewPager/onTouchEvent(Landroid/view/MotionEvent;)Z
istore 2
L1:
iload 2
ireturn
L2:
astore 1
iconst_0
ireturn
L3:
astore 1
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
