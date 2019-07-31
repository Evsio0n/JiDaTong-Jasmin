.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/BannerView$1
.super java/lang/Object
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.enclosing method com/nd/schoollife/ui/square/view/BannerView/setEvent()V
.inner class inner com/nd/schoollife/ui/square/view/BannerView$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/BannerView;

.method <init>(Lcom/nd/schoollife/ui/square/view/BannerView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/BannerView$1/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPageScrollStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public onPageScrolled(IFI)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$1/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$100(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/support/v4/view/ViewPager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$1/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$100(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getParent()Landroid/view/ViewParent;
iconst_1
invokeinterface android/view/ViewParent/requestDisallowInterceptTouchEvent(Z)V 1
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public onPageSelected(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$1/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
iload 1
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$000(Lcom/nd/schoollife/ui/square/view/BannerView;I)V
return
.limit locals 2
.limit stack 2
.end method
