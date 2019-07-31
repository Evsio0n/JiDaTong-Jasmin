.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/TweetMessageActivity
.super com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity
.implements com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$2

.field public static final 'AT_TYPE' I = 0


.field private static final 'COMMENT_TYPE' I = 1


.field private static final 'CONTENT_CONTAINER_ID' I

.field private static final 'PRAISE_TYPE' I = 2


.field private static final 'msgStayTime' J = 1000L


.field private 'mAllCount' I

.field private 'mAtFragment' Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;

.field private 'mCommentFragment' Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;

.field private 'mCurFragment' Landroid/support/v4/app/Fragment;

.field private 'mCurrentContentType' I

.field private 'mHandler' Landroid/os/Handler;

.field private 'mPraiseFragment' Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;

.field private 'mUnreadMsgInfo' Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;

.field private 'messageTopView' Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;

.method static <clinit>()V
getstatic com/android/u/weibo/R$id/content_container I
putstatic com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/CONTENT_CONTAINER_ID I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/<init>()V
aload 0
iconst_m1
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCurrentContentType I
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mAllCount I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;)Landroid/os/Handler;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addContentFragment(I)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ResourceAsColor" 
.end annotation
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCurrentContentType I
iload 1
if_icmpne L0
return
L0:
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCurrentContentType I
aload 2
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCurFragment Landroid/support/v4/app/Fragment;
ifnull L1
iload 1
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
ifle L2
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCurFragment Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L1:
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/tag2Frament(I)Landroid/support/v4/app/Fragment;
astore 3
aload 3
invokevirtual android/support/v4/app/Fragment/isAdded()Z
ifne L3
aload 2
getstatic com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/CONTENT_CONTAINER_ID I
aload 3
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L4:
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCurFragment Landroid/support/v4/app/Fragment;
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/messageTopView Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;
iload 1
invokevirtual com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/setTopMessageStatus(I)V
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/pageSelected(I)V
return
L2:
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCurFragment Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/FragmentTransaction/hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
goto L1
L3:
aload 2
aload 3
invokevirtual android/support/v4/app/FragmentTransaction/show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
goto L4
.limit locals 4
.limit stack 3
.end method

.method private firstShowPage()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
iadd
ifeq L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt I
ifeq L2
iconst_1
ireturn
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_praise I
ifeq L1
iconst_2
ireturn
.limit locals 1
.limit stack 2
.end method

.method private initUnreadAndReturnBack()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mAllCount I
ifle L0
new android/content/Intent
dup
ldc "wb_unread_msg"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "unread"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 1
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private pageSelected(I)V
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 2
aload 2
iload 1
putfield android/os/Message/what I
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
iadd
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mHandler Landroid/os/Handler;
aload 2
ldc2_w 1000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt I
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
iconst_0
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mHandler Landroid/os/Handler;
aload 2
ldc2_w 1000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_praise I
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
iconst_0
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_praise I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mHandler Landroid/os/Handler;
aload 2
ldc2_w 1000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method private tag2Frament(I)Landroid/support/v4/app/Fragment;
iload 1
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
ifle L2
L1:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getInstance(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;
new com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;)V
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/setListener(Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener;)V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mAtFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;
areturn
L0:
iload 1
iconst_1
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCommentFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
ifnonnull L4
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt I
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/getInstance(I)Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCommentFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mCommentFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
areturn
L3:
iload 1
iconst_2
if_icmpne L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mPraiseFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
ifnonnull L6
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_praise I
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/getInstance(I)Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mPraiseFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mPraiseFragment Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
areturn
L5:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method public handleAtMeClickEvent()V
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/addContentFragment(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public handleCommentClickEvent()V
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/addContentFragment(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public handleLikeClickEvent()V
aload 0
iconst_2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/addContentFragment(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$layout/weibo_message I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/setContentView(I)V
aload 0
aload 0
invokestatic com/android/u/weibo/weibo/ui/widget/msg/MessageTopViewFactory/getTopMessageView(Landroid/app/Activity;)Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/messageTopView Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/messageTopView Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;
getstatic com/android/u/weibo/R$id/stub_tweet_message_header I
invokevirtual com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/initComponent(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/messageTopView Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/setTopMessageClickListener(Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;)V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mHandler Landroid/os/Handler;
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/getIntent()Landroid/content/Intent;
ldc "unread"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
ifnonnull L0
aload 0
new com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/<init>()V
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
L0:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
iadd
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_praise I
iadd
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt I
iadd
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mAllCount I
aload 0
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/setUnreadMessageCount(ILcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
aload 0
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/setUnreadMessageCount(ILcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
aload 0
iconst_2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/setUnreadMessageCount(ILcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
aload 0
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/firstShowPage()I
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/addContentFragment(I)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/initUnreadAndReturnBack()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onResume()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onResume()V
return
.limit locals 1
.limit stack 1
.end method

.method public setUnreadMessageCount(ILcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/messageTopView Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;
aload 2
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
aload 2
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
iadd
invokevirtual com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/setAtMeUnreadCount(I)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/messageTopView Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;
aload 2
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt I
invokevirtual com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/setCommentUnreadCount(I)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/messageTopView Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;
aload 2
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_praise I
invokevirtual com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/setLikeUnreadCount(I)V
return
.limit locals 3
.limit stack 3
.end method
