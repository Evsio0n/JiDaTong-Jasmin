.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/CycleSelectionView
.super com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow
.implements android/view/View$OnClickListener
.inner class public static abstract interface OnCycleItemClickListener inner com/android/u/weibo/weibo/ui/widget/CycleSelectionView$OnCycleItemClickListener outer com/android/u/weibo/weibo/ui/widget/CycleSelectionView

.field public static final 'TWEET_LIST_TYPE_MINE' I = 0


.field public static final 'TWEET_LIST_TYPE_PUBLIC' I = 1


.field private 'mCurrentType' I

.field private 'mOnCycleItemClickListener' Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView$OnCycleItemClickListener;

.field private 'mTxtMyTweetSelection' Landroid/widget/TextView;

.field private 'mTxtPublicTweetSelection' Landroid/widget/TextView;

.method public <init>(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow/<init>(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCurrentType()I
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/my_tweet_selection I
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
ifeq L1
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
invokevirtual com/android/u/weibo/weibo/ui/widget/CycleSelectionView/setCurrentType(I)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mOnCycleItemClickListener Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView$OnCycleItemClickListener;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mOnCycleItemClickListener Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView$OnCycleItemClickListener;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
invokeinterface com/android/u/weibo/weibo/ui/widget/CycleSelectionView$OnCycleItemClickListener/onCycleItemClick(I)V 1
L2:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/CycleSelectionView/dismiss()V
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/public_tweet_selection I
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
iconst_1
if_icmpeq L1
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
invokevirtual com/android/u/weibo/weibo/ui/widget/CycleSelectionView/setCurrentType(I)V
goto L1
.limit locals 3
.limit stack 2
.end method

.method protected onCreate()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow/onCreate()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/anchor Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/android/u/weibo/R$layout/cycle_selection_popup_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/android/u/weibo/R$id/my_tweet_selection I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtMyTweetSelection Landroid/widget/TextView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/public_tweet_selection I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtPublicTweetSelection Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtMyTweetSelection Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtPublicTweetSelection Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/widget/CycleSelectionView/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setCurrentType(I)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtMyTweetSelection Landroid/widget/TextView;
bipush 70
iconst_5
bipush 70
iconst_5
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtPublicTweetSelection Landroid/widget/TextView;
bipush 70
iconst_5
bipush 70
iconst_5
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mCurrentType I
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtMyTweetSelection Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/cycle_selection_listview_selected I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtPublicTweetSelection Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setBackgroundResource(I)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtPublicTweetSelection Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/cycle_selection_listview_selected I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mTxtMyTweetSelection Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 5
.end method

.method public setOnCycleItemClickListener(Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView$OnCycleItemClickListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/CycleSelectionView/mOnCycleItemClickListener Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView$OnCycleItemClickListener;
return
.limit locals 2
.limit stack 2
.end method
