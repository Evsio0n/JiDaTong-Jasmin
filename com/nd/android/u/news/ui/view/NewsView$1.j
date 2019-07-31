.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/NewsView$1
.super java/lang/Object
.implements uk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener
.enclosing method com/nd/android/u/news/ui/view/NewsView/setViewOnClick()V
.inner class inner com/nd/android/u/news/ui/view/NewsView$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/NewsView;

.method <init>(Lcom/nd/android/u/news/ui/view/NewsView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/NewsView$1/this$0 Lcom/nd/android/u/news/ui/view/NewsView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onViewTap(Landroid/view/View;FF)V
aload 0
getfield com/nd/android/u/news/ui/view/NewsView$1/this$0 Lcom/nd/android/u/news/ui/view/NewsView;
getfield com/nd/android/u/news/ui/view/NewsView/mContext Landroid/content/Context;
checkcast com/nd/android/u/news/ui/activity/base/PhotoBaseActivity
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/setContentVisibility()V
aload 0
getfield com/nd/android/u/news/ui/view/NewsView$1/this$0 Lcom/nd/android/u/news/ui/view/NewsView;
getfield com/nd/android/u/news/ui/view/NewsView/mContext Landroid/content/Context;
checkcast com/nd/android/u/news/ui/activity/base/PhotoBaseActivity
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/setFootViewVisibility()V
return
.limit locals 4
.limit stack 1
.end method
