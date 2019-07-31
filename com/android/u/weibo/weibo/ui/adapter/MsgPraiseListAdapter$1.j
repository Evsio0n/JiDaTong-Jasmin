.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/bindData(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/Praise;Z)V
.inner class inner com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;

.field final synthetic 'val$praise' Lcom/android/u/weibo/weibo/business/bean/Praise;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;Lcom/android/u/weibo/weibo/business/bean/Praise;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$1/val$praise Lcom/android/u/weibo/weibo/business/bean/Praise;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mActivity Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$1/val$praise Lcom/android/u/weibo/weibo/business/bean/Praise;
getfield com/android/u/weibo/weibo/business/bean/Praise/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
