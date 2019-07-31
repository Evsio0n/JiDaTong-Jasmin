.bytecode 50.0
.class public synchronized com/bumptech/glide/util/FixedPreloadSizeProvider
.super java/lang/Object
.implements com/bumptech/glide/ListPreloader$PreloadSizeProvider
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<TT;>;"

.field private final 'size' [I

.method public <init>(II)V
aload 0
invokespecial java/lang/Object/<init>()V
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
putfield com/bumptech/glide/util/FixedPreloadSizeProvider/size [I
return
.limit locals 3
.limit stack 5
.end method

.method public getPreloadSize(Ljava/lang/Object;II)[I
.signature "(TT;II)[I"
aload 0
getfield com/bumptech/glide/util/FixedPreloadSizeProvider/size [I
aload 0
getfield com/bumptech/glide/util/FixedPreloadSizeProvider/size [I
arraylength
invokestatic java/util/Arrays/copyOf([II)[I
areturn
.limit locals 4
.limit stack 2
.end method
