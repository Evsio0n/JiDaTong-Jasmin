.bytecode 50.0
.class public synchronized com/bumptech/glide/util/ViewPreloadSizeProvider
.super java/lang/Object
.implements com/bumptech/glide/ListPreloader$PreloadSizeProvider
.implements com/bumptech/glide/request/target/SizeReadyCallback
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<TT;>;Lcom/bumptech/glide/request/target/SizeReadyCallback;"
.inner class private static final SizeViewTarget inner com/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget outer com/bumptech/glide/util/ViewPreloadSizeProvider

.field private 'size' [I

.field private 'viewTarget' Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/bumptech/glide/util/ViewPreloadSizeProvider/setView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getPreloadSize(Ljava/lang/Object;II)[I
.signature "(TT;II)[I"
aload 0
getfield com/bumptech/glide/util/ViewPreloadSizeProvider/size [I
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/bumptech/glide/util/ViewPreloadSizeProvider/size [I
aload 0
getfield com/bumptech/glide/util/ViewPreloadSizeProvider/size [I
arraylength
invokestatic java/util/Arrays/copyOf([II)[I
areturn
.limit locals 4
.limit stack 2
.end method

.method public onSizeReady(II)V
aload 0
iconst_2
newarray int
dup
iconst_0
iload 1
iastore
dup
iconst_1
iload 2
iastore
putfield com/bumptech/glide/util/ViewPreloadSizeProvider/size [I
aload 0
aconst_null
putfield com/bumptech/glide/util/ViewPreloadSizeProvider/viewTarget Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
return
.limit locals 3
.limit stack 5
.end method

.method public setView(Landroid/view/View;)V
aload 0
getfield com/bumptech/glide/util/ViewPreloadSizeProvider/size [I
ifnonnull L0
aload 0
getfield com/bumptech/glide/util/ViewPreloadSizeProvider/viewTarget Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
ifnull L1
L0:
return
L1:
aload 0
new com/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget
dup
aload 1
aload 0
invokespecial com/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget/<init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
putfield com/bumptech/glide/util/ViewPreloadSizeProvider/viewTarget Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
return
.limit locals 2
.limit stack 5
.end method
