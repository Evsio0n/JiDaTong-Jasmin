.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter
.super android/support/v4/app/FragmentPagerAdapter
.implements com/common/android/ui/viewPagerIndicator/TitleProvider

.field private 'mCommentAtFragment' Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;

.field private 'mTopicInfoAtFragment' Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;

.field private 'mUnreadMsgInfo' Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;

.method public <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentPagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
aload 0
new com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment
dup
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mTopicInfoAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mTopicInfoAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/setUnreadCount(I)V
aload 0
new com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment
dup
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mCommentAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mCommentAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/setUnreadCount(I)V
return
.limit locals 4
.limit stack 3
.end method

.method public cmmntAtMeLoadData()V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mCommentAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/loadData()V
return
.limit locals 1
.limit stack 1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
return
.limit locals 4
.limit stack 0
.end method

.method public getCount()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
iload 1
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mTopicInfoAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
areturn
L0:
iload 1
iconst_1
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mCommentAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;
areturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/mTopicInfoAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getTitle(I)Ljava/lang/String;
ldc ""
areturn
.limit locals 2
.limit stack 1
.end method
