.bytecode 50.0
.class synchronized android/support/v4/view/ViewPager$PagerObserver
.super android/database/DataSetObserver
.inner class private PagerObserver inner android/support/v4/view/ViewPager$PagerObserver outer android/support/v4/view/ViewPager

.field final synthetic 'this$0' Landroid/support/v4/view/ViewPager;

.method private <init>(Landroid/support/v4/view/ViewPager;)V
aload 0
aload 1
putfield android/support/v4/view/ViewPager$PagerObserver/this$0 Landroid/support/v4/view/ViewPager;
aload 0
invokespecial android/database/DataSetObserver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V
aload 0
aload 1
invokespecial android/support/v4/view/ViewPager$PagerObserver/<init>(Landroid/support/v4/view/ViewPager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onChanged()V
aload 0
getfield android/support/v4/view/ViewPager$PagerObserver/this$0 Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/dataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public onInvalidated()V
aload 0
getfield android/support/v4/view/ViewPager$PagerObserver/this$0 Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/dataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method
