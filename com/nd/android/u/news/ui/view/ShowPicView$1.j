.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/ShowPicView$1
.super java/lang/Object
.implements uk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener
.enclosing method com/nd/android/u/news/ui/view/ShowPicView/setViewOnClick()V
.inner class inner com/nd/android/u/news/ui/view/ShowPicView$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/ShowPicView;

.method <init>(Lcom/nd/android/u/news/ui/view/ShowPicView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/ShowPicView$1/this$0 Lcom/nd/android/u/news/ui/view/ShowPicView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onViewTap(Landroid/view/View;FF)V
aload 0
getfield com/nd/android/u/news/ui/view/ShowPicView$1/this$0 Lcom/nd/android/u/news/ui/view/ShowPicView;
getfield com/nd/android/u/news/ui/view/ShowPicView/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/finish()V
return
.limit locals 4
.limit stack 1
.end method
