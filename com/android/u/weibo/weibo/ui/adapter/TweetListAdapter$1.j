.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapter$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapter$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapter$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapter$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/mActivity Landroid/app/Activity;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/doTopRank(Landroid/content/Context;)V
return
.limit locals 6
.limit stack 1
.end method
