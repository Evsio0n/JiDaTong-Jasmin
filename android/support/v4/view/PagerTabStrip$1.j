.bytecode 50.0
.class synchronized android/support/v4/view/PagerTabStrip$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method android/support/v4/view/PagerTabStrip/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.inner class inner android/support/v4/view/PagerTabStrip$1

.field final synthetic 'this$0' Landroid/support/v4/view/PagerTabStrip;

.method <init>(Landroid/support/v4/view/PagerTabStrip;)V
aload 0
aload 1
putfield android/support/v4/view/PagerTabStrip$1/this$0 Landroid/support/v4/view/PagerTabStrip;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield android/support/v4/view/PagerTabStrip$1/this$0 Landroid/support/v4/view/PagerTabStrip;
getfield android/support/v4/view/PagerTabStrip/mPager Landroid/support/v4/view/ViewPager;
aload 0
getfield android/support/v4/view/PagerTabStrip$1/this$0 Landroid/support/v4/view/PagerTabStrip;
getfield android/support/v4/view/PagerTabStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
iconst_1
isub
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
return
.limit locals 2
.limit stack 3
.end method
