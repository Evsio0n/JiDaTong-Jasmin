.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/listener/PauseOnScrollListener
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener

.field private final 'externalListener' Landroid/widget/AbsListView$OnScrollListener;

.field private 'imageLoader' Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private final 'pauseOnFling' Z

.field private final 'pauseOnScroll' Z

.method public <init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZ)V
aload 0
aload 1
iload 2
iload 3
aconst_null
invokespecial com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public <init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/imageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/pauseOnScroll Z
aload 0
iload 3
putfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/pauseOnFling Z
aload 0
aload 4
putfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/externalListener Landroid/widget/AbsListView$OnScrollListener;
return
.limit locals 5
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 0
getfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/externalListener Landroid/widget/AbsListView$OnScrollListener;
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/externalListener Landroid/widget/AbsListView$OnScrollListener;
aload 1
iload 2
iload 3
iload 4
invokeinterface android/widget/AbsListView$OnScrollListener/onScroll(Landroid/widget/AbsListView;III)V 4
L0:
return
.limit locals 5
.limit stack 5
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 0
getfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/externalListener Landroid/widget/AbsListView$OnScrollListener;
ifnull L4
aload 0
getfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/externalListener Landroid/widget/AbsListView$OnScrollListener;
aload 1
iload 2
invokeinterface android/widget/AbsListView$OnScrollListener/onScrollStateChanged(Landroid/widget/AbsListView;I)V 2
L4:
return
L0:
aload 0
getfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/imageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/resume()V
goto L3
L1:
aload 0
getfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/pauseOnScroll Z
ifeq L3
aload 0
getfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/imageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/pause()V
goto L3
L2:
aload 0
getfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/pauseOnFling Z
ifeq L3
aload 0
getfield com/nostra13/universalimageloader/core/listener/PauseOnScrollListener/imageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/pause()V
goto L3
.limit locals 3
.limit stack 3
.end method
