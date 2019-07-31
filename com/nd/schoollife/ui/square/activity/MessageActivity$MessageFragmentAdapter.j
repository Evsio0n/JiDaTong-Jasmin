.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter
.super android/support/v4/view/PagerAdapter
.inner class static MessageFragmentAdapter inner com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter outer com/nd/schoollife/ui/square/activity/MessageActivity

.field private 'mAtView' Lcom/nd/schoollife/ui/square/view/widget/MessageView;

.field private 'mContext' Landroid/content/Context;

.field private 'mLikeView' Lcom/nd/schoollife/ui/square/view/widget/MessageView;

.field private 'mReplyView' Lcom/nd/schoollife/ui/square/view/widget/MessageView;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
return
.limit locals 4
.limit stack 0
.end method

.method public getCount()I
iconst_3
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
bipush -2
ireturn
.limit locals 2
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
iload 2
tableswitch 0
L0
L1
L2
default : L3
L3:
aconst_null
areturn
L2:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mAtView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
ifnonnull L4
aload 0
new com/nd/schoollife/ui/square/view/widget/MessageView
dup
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mContext Landroid/content/Context;
iload 2
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/<init>(Landroid/content/Context;I)V
putfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mAtView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
aload 1
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mAtView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
L4:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mAtView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
areturn
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mLikeView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
ifnonnull L5
aload 0
new com/nd/schoollife/ui/square/view/widget/MessageView
dup
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mContext Landroid/content/Context;
iload 2
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/<init>(Landroid/content/Context;I)V
putfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mLikeView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
aload 1
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mLikeView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
L5:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mLikeView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
areturn
L1:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mReplyView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
ifnonnull L6
aload 0
new com/nd/schoollife/ui/square/view/widget/MessageView
dup
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mContext Landroid/content/Context;
iload 2
invokespecial com/nd/schoollife/ui/square/view/widget/MessageView/<init>(Landroid/content/Context;I)V
putfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mReplyView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
aload 1
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mReplyView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
L6:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mReplyView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
areturn
.limit locals 3
.limit stack 5
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
aload 1
aload 2
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 0
aload 1
iload 2
aload 3
invokespecial android/support/v4/view/PagerAdapter/setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
iload 2
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L2:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mAtView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mAtView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
invokevirtual com/nd/schoollife/ui/square/view/widget/MessageView/initData()V
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mLikeView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mLikeView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
invokevirtual com/nd/schoollife/ui/square/view/widget/MessageView/initData()V
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mReplyView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/mReplyView Lcom/nd/schoollife/ui/square/view/widget/MessageView;
invokevirtual com/nd/schoollife/ui/square/view/widget/MessageView/initData()V
return
.limit locals 4
.limit stack 4
.end method
