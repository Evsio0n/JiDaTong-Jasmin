.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/view/NewsView
.super com/nd/android/u/news/ui/view/AbstractNewsView
.inner class inner com/nd/android/u/news/ui/view/NewsView$1

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/AbstractNewsView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/news/ui/view/AbstractNewsView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/u/news/ui/view/AbstractNewsView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public setViewOnClick()V
aload 0
getfield com/nd/android/u/news/ui/view/NewsView/iv Luk/co/senab/photoview/PhotoView;
new com/nd/android/u/news/ui/view/NewsView$1
dup
aload 0
invokespecial com/nd/android/u/news/ui/view/NewsView$1/<init>(Lcom/nd/android/u/news/ui/view/NewsView;)V
invokevirtual uk/co/senab/photoview/PhotoView/setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
return
.limit locals 1
.limit stack 4
.end method
