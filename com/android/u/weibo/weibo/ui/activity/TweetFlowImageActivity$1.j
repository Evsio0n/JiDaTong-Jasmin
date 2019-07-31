.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1
.super java/lang/Object
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/setupViews()V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
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
return
.limit locals 4
.limit stack 0
.end method

.method public onPageSelected(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
iload 1
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$002(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;I)I
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 4
.end method
