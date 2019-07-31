.bytecode 50.0
.class synchronized android/support/v4/view/PagerTitleStrip$PageListener
.super android/database/DataSetObserver
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.implements android/support/v4/view/ViewPager$OnAdapterChangeListener
.inner class private PageListener inner android/support/v4/view/PagerTitleStrip$PageListener outer android/support/v4/view/PagerTitleStrip

.field private 'mScrollState' I

.field final synthetic 'this$0' Landroid/support/v4/view/PagerTitleStrip;

.method private <init>(Landroid/support/v4/view/PagerTitleStrip;)V
aload 0
aload 1
putfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
aload 0
invokespecial android/database/DataSetObserver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V
aload 0
aload 1
invokespecial android/support/v4/view/PagerTitleStrip$PageListener/<init>(Landroid/support/v4/view/PagerTitleStrip;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
aload 1
aload 2
invokevirtual android/support/v4/view/PagerTitleStrip/updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onChanged()V
fconst_0
fstore 1
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerTitleStrip/updateText(ILandroid/support/v4/view/PagerAdapter;)V
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
invokestatic android/support/v4/view/PagerTitleStrip/access$100(Landroid/support/v4/view/PagerTitleStrip;)F
fconst_0
fcmpl
iflt L0
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
invokestatic android/support/v4/view/PagerTitleStrip/access$100(Landroid/support/v4/view/PagerTitleStrip;)F
fstore 1
L0:
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
fload 1
iconst_1
invokevirtual android/support/v4/view/PagerTitleStrip/updateTextPositions(IFZ)V
return
.limit locals 2
.limit stack 4
.end method

.method public onPageScrollStateChanged(I)V
aload 0
iload 1
putfield android/support/v4/view/PagerTitleStrip$PageListener/mScrollState I
return
.limit locals 2
.limit stack 2
.end method

.method public onPageScrolled(IFI)V
iload 1
istore 3
fload 2
ldc_w 0.5F
fcmpl
ifle L0
iload 1
iconst_1
iadd
istore 3
L0:
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
iload 3
fload 2
iconst_0
invokevirtual android/support/v4/view/PagerTitleStrip/updateTextPositions(IFZ)V
return
.limit locals 4
.limit stack 4
.end method

.method public onPageSelected(I)V
fconst_0
fstore 2
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/mScrollState I
ifne L0
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerTitleStrip/updateText(ILandroid/support/v4/view/PagerAdapter;)V
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
invokestatic android/support/v4/view/PagerTitleStrip/access$100(Landroid/support/v4/view/PagerTitleStrip;)F
fconst_0
fcmpl
iflt L1
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
invokestatic android/support/v4/view/PagerTitleStrip/access$100(Landroid/support/v4/view/PagerTitleStrip;)F
fstore 2
L1:
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
aload 0
getfield android/support/v4/view/PagerTitleStrip$PageListener/this$0 Landroid/support/v4/view/PagerTitleStrip;
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
fload 2
iconst_1
invokevirtual android/support/v4/view/PagerTitleStrip/updateTextPositions(IFZ)V
L0:
return
.limit locals 3
.limit stack 4
.end method
