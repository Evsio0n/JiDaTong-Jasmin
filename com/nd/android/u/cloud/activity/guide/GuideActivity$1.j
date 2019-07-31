.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/GuideActivity$1
.super java/lang/Object
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.enclosing method com/nd/android/u/cloud/activity/guide/GuideActivity/initEvent()V
.inner class inner com/nd/android/u/cloud/activity/guide/GuideActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/GuideActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
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
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
invokestatic com/nd/android/u/cloud/activity/guide/GuideActivity/access$100(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
invokestatic com/nd/android/u/cloud/activity/guide/GuideActivity/access$200(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)I
iload 3
isub
ifgt L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
invokestatic com/nd/android/u/cloud/activity/guide/GuideActivity/access$300(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
invokestatic com/nd/android/u/cloud/activity/guide/GuideActivity/access$400(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmpne L0
iload 3
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
iconst_1
invokestatic com/nd/android/u/cloud/activity/guide/GuideActivity/access$102(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
iconst_1
invokestatic com/nd/android/u/cloud/helper/Utils/setHasShowWelcome(Landroid/content/Context;Z)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
invokestatic com/nd/android/u/cloud/activity/guide/GuideActivity/access$500(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
invokevirtual com/nd/android/u/cloud/activity/guide/GuideActivity/finish()V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
iload 3
invokestatic com/nd/android/u/cloud/activity/guide/GuideActivity/access$202(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;I)I
pop
return
.limit locals 4
.limit stack 3
.end method

.method public onPageSelected(I)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
iload 1
invokestatic com/nd/android/u/cloud/activity/guide/GuideActivity/access$000(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;I)V
return
.limit locals 2
.limit stack 2
.end method
