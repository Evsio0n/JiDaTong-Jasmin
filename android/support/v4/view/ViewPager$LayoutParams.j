.bytecode 50.0
.class public synchronized android/support/v4/view/ViewPager$LayoutParams
.super android/view/ViewGroup$LayoutParams
.inner class public static LayoutParams inner android/support/v4/view/ViewPager$LayoutParams outer android/support/v4/view/ViewPager

.field 'childIndex' I

.field public 'gravity' I

.field public 'isDecor' Z

.field 'needsMeasure' Z

.field 'position' I

.field 'widthFactor' F

.method public <init>()V
aload 0
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
aload 0
fconst_0
putfield android/support/v4/view/ViewPager$LayoutParams/widthFactor F
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/ViewGroup$LayoutParams/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
fconst_0
putfield android/support/v4/view/ViewPager$LayoutParams/widthFactor F
aload 1
aload 2
invokestatic android/support/v4/view/ViewPager/access$400()[I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
iconst_0
bipush 48
invokevirtual android/content/res/TypedArray/getInteger(II)I
putfield android/support/v4/view/ViewPager$LayoutParams/gravity I
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 3
.limit stack 4
.end method
