.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/initData()V
.inner class inner com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;

.method <init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/RankInfo
astore 1
aload 1
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$000(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/content/Context;
aload 1
getfield com/product/android/commonInterface/contact/RankInfo/uid J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
L0:
return
.limit locals 6
.limit stack 3
.end method
