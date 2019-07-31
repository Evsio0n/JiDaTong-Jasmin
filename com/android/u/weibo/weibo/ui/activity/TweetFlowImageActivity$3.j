.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/onClick(Landroid/view/View;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Landroid/app/Dialog;
invokevirtual android/app/Dialog/dismiss()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$502(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$700(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/finish()V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$900(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Lcom/product/android/ui/showImage/FlowImageAdapter;
invokevirtual com/product/android/ui/showImage/FlowImageAdapter/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$1100(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmple L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$1300(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 2
L2:
aload 1
iload 2
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$1002(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;I)I
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$1500(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$1600(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$1400(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
istore 2
goto L2
.limit locals 3
.limit stack 4
.end method
