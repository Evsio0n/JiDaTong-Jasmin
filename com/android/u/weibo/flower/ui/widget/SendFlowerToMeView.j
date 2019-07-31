.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/SendFlowerToMeView
.super android/widget/RelativeLayout

.field public static final 'DISPLAY_BY_SUM' I = 1


.field public static final 'DISPLAY_BY_TIME' I = 0


.field public static final 'MINE_RANK' I = 0


.field public static final 'OTHER_RANT' I = 1


.field private 'mContext' Landroid/content/Context;

.field private 'mDisplay' I

.field private 'mParentHandler' Landroid/os/Handler;

.field private 'mRankType' I

.field private 'mScreenWidth' I

.field private 'mTopRankListByTimeView' Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;

.field private 'mTopRankView' Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;

.field private 'mUid' J

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mDisplay I
aload 0
lconst_0
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mUid J
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mRankType I
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;ILandroid/os/Handler;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mDisplay I
aload 0
lconst_0
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mUid J
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mRankType I
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mScreenWidth I
aload 0
aload 3
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mParentHandler Landroid/os/Handler;
return
.limit locals 4
.limit stack 3
.end method

.method private addTopRankListByTimeView()V
aload 0
new com/android/u/weibo/flower/ui/widget/TopRankListByTimeView
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mContext Landroid/content/Context;
iconst_0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mParentHandler Landroid/os/Handler;
invokespecial com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/<init>(Landroid/content/Context;ILandroid/os/Handler;)V
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mUid J
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/setUid(J)V
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/addView(Landroid/view/View;)V
return
.limit locals 1
.limit stack 6
.end method

.method private addTopRankView()V
aload 0
new com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mContext Landroid/content/Context;
iconst_2
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mScreenWidth I
invokespecial com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/<init>(Landroid/content/Context;II)V
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mParentHandler Landroid/os/Handler;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/setParentHanlder(Landroid/os/Handler;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mUid J
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/setUid(J)V
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/addView(Landroid/view/View;)V
return
.limit locals 1
.limit stack 6
.end method

.method public changeDisplay(I)V
aload 0
iload 1
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mDisplay I
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/initData()V
return
.limit locals 2
.limit stack 2
.end method

.method public initData()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mDisplay I
iconst_1
if_icmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
ifnonnull L1
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/addTopRankView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/init()V
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
iconst_0
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
ifnull L2
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
bipush 8
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/setVisibility(I)V
L2:
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mRankType I
ifne L2
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
ifnonnull L3
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/addTopRankListByTimeView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/initData()V
L3:
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
iconst_0
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
ifnull L2
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
bipush 8
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public initView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/wbflow_top_rank_send_flower_to_me_view I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mDisplay I
iconst_1
if_icmpne L0
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/addTopRankView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/init()V
return
L0:
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/addTopRankListByTimeView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/initData()V
return
.limit locals 1
.limit stack 4
.end method

.method public onDestroy()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/onDestroy()V
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
ifnull L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/onDestroy()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public refresh()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mDisplay I
iconst_1
if_icmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankView Lcom/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankFlowerToMeView/refresh()V
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mTopRankListByTimeView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/refresh()V
return
.limit locals 1
.limit stack 2
.end method

.method public setDisplay(I)V
aload 0
iload 1
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mDisplay I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mRankType I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/mUid J
return
.limit locals 3
.limit stack 3
.end method
