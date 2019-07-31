.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/listen/NewsPageChangeListener
.super java/lang/Object
.implements android/support/v4/view/ViewPager$OnPageChangeListener

.field private 'mContentListener' Lcom/nd/android/u/news/ui/listen/SetContentListener;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public loadMore(I)V
aload 0
getfield com/nd/android/u/news/ui/listen/NewsPageChangeListener/mContentListener Lcom/nd/android/u/news/ui/listen/SetContentListener;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/listen/NewsPageChangeListener/mContentListener Lcom/nd/android/u/news/ui/listen/SetContentListener;
iload 1
invokeinterface com/nd/android/u/news/ui/listen/SetContentListener/loadMore(I)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onPageScrollStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public onPageScrolled(IFI)V
return
.limit locals 4
.limit stack 0
.end method

.method public onPageSelected(I)V
aload 0
iload 1
invokevirtual com/nd/android/u/news/ui/listen/NewsPageChangeListener/setContent(I)V
aload 0
iload 1
invokevirtual com/nd/android/u/news/ui/listen/NewsPageChangeListener/loadMore(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setContent(I)V
aload 0
getfield com/nd/android/u/news/ui/listen/NewsPageChangeListener/mContentListener Lcom/nd/android/u/news/ui/listen/SetContentListener;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/listen/NewsPageChangeListener/mContentListener Lcom/nd/android/u/news/ui/listen/SetContentListener;
iload 1
invokeinterface com/nd/android/u/news/ui/listen/SetContentListener/setContent(I)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setContentListener(Lcom/nd/android/u/news/ui/listen/SetContentListener;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/listen/NewsPageChangeListener/mContentListener Lcom/nd/android/u/news/ui/listen/SetContentListener;
return
.limit locals 2
.limit stack 2
.end method
