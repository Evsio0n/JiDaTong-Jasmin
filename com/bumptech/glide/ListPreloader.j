.bytecode 50.0
.class public synchronized com/bumptech/glide/ListPreloader
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Landroid/widget/AbsListView$OnScrollListener;"
.inner class inner com/bumptech/glide/ListPreloader$1
.inner class inner com/bumptech/glide/ListPreloader$2
.inner class public static abstract interface PreloadModelProvider inner com/bumptech/glide/ListPreloader$PreloadModelProvider outer com/bumptech/glide/ListPreloader
.inner class public static abstract interface PreloadSizeProvider inner com/bumptech/glide/ListPreloader$PreloadSizeProvider outer com/bumptech/glide/ListPreloader
.inner class private static PreloadTarget inner com/bumptech/glide/ListPreloader$PreloadTarget outer com/bumptech/glide/ListPreloader
.inner class private static final PreloadTargetQueue inner com/bumptech/glide/ListPreloader$PreloadTargetQueue outer com/bumptech/glide/ListPreloader

.field private 'isIncreasing' Z

.field private 'lastEnd' I

.field private 'lastFirstVisible' I

.field private 'lastStart' I

.field private final 'maxPreload' I

.field private final 'preloadDimensionProvider' Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider; signature "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<TT;>;"

.field private final 'preloadModelProvider' Lcom/bumptech/glide/ListPreloader$PreloadModelProvider; signature "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<TT;>;"

.field private final 'preloadTargetQueue' Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

.field private 'totalItemCount' I

.method public <init>(I)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/bumptech/glide/ListPreloader/isIncreasing Z
aload 0
new com/bumptech/glide/ListPreloader$1
dup
aload 0
invokespecial com/bumptech/glide/ListPreloader$1/<init>(Lcom/bumptech/glide/ListPreloader;)V
putfield com/bumptech/glide/ListPreloader/preloadModelProvider Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
aload 0
new com/bumptech/glide/ListPreloader$2
dup
aload 0
invokespecial com/bumptech/glide/ListPreloader$2/<init>(Lcom/bumptech/glide/ListPreloader;)V
putfield com/bumptech/glide/ListPreloader/preloadDimensionProvider Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
aload 0
iload 1
putfield com/bumptech/glide/ListPreloader/maxPreload I
aload 0
new com/bumptech/glide/ListPreloader$PreloadTargetQueue
dup
iload 1
iconst_1
iadd
invokespecial com/bumptech/glide/ListPreloader$PreloadTargetQueue/<init>(I)V
putfield com/bumptech/glide/ListPreloader/preloadTargetQueue Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
return
.limit locals 2
.limit stack 5
.end method

.method public <init>(Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;I)V
.signature "(Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<TT;>;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<TT;>;I)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/bumptech/glide/ListPreloader/isIncreasing Z
aload 0
aload 1
putfield com/bumptech/glide/ListPreloader/preloadModelProvider Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
aload 0
aload 2
putfield com/bumptech/glide/ListPreloader/preloadDimensionProvider Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
aload 0
iload 3
putfield com/bumptech/glide/ListPreloader/maxPreload I
aload 0
new com/bumptech/glide/ListPreloader$PreloadTargetQueue
dup
iload 3
iconst_1
iadd
invokespecial com/bumptech/glide/ListPreloader$PreloadTargetQueue/<init>(I)V
putfield com/bumptech/glide/ListPreloader/preloadTargetQueue Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
return
.limit locals 4
.limit stack 5
.end method

.method private cancelAll()V
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/bumptech/glide/ListPreloader/maxPreload I
if_icmpge L1
aload 0
getfield com/bumptech/glide/ListPreloader/preloadTargetQueue Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
iconst_0
iconst_0
invokevirtual com/bumptech/glide/ListPreloader$PreloadTargetQueue/next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;
invokestatic com/bumptech/glide/Glide/clear(Lcom/bumptech/glide/request/target/Target;)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 2
.limit stack 3
.end method

.method private preload(II)V
iload 1
iload 2
if_icmpge L0
aload 0
getfield com/bumptech/glide/ListPreloader/lastEnd I
iload 1
invokestatic java/lang/Math/max(II)I
istore 3
iload 2
istore 4
L1:
aload 0
getfield com/bumptech/glide/ListPreloader/totalItemCount I
iload 4
invokestatic java/lang/Math/min(II)I
istore 4
aload 0
getfield com/bumptech/glide/ListPreloader/totalItemCount I
iconst_0
iload 3
invokestatic java/lang/Math/max(II)I
invokestatic java/lang/Math/min(II)I
istore 3
iload 1
iload 2
if_icmpge L2
iload 3
istore 1
L3:
iload 1
iload 4
if_icmpge L4
aload 0
aload 0
getfield com/bumptech/glide/ListPreloader/preloadModelProvider Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
iload 1
invokeinterface com/bumptech/glide/ListPreloader$PreloadModelProvider/getPreloadItems(I)Ljava/util/List; 1
iload 1
iconst_1
invokespecial com/bumptech/glide/ListPreloader/preloadAdapterPosition(Ljava/util/List;IZ)V
iload 1
iconst_1
iadd
istore 1
goto L3
L0:
iload 2
istore 3
aload 0
getfield com/bumptech/glide/ListPreloader/lastStart I
iload 1
invokestatic java/lang/Math/min(II)I
istore 4
goto L1
L2:
iload 4
iconst_1
isub
istore 1
L5:
iload 1
iload 3
if_icmplt L4
aload 0
aload 0
getfield com/bumptech/glide/ListPreloader/preloadModelProvider Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
iload 1
invokeinterface com/bumptech/glide/ListPreloader$PreloadModelProvider/getPreloadItems(I)Ljava/util/List; 1
iload 1
iconst_0
invokespecial com/bumptech/glide/ListPreloader/preloadAdapterPosition(Ljava/util/List;IZ)V
iload 1
iconst_1
isub
istore 1
goto L5
L4:
aload 0
iload 3
putfield com/bumptech/glide/ListPreloader/lastStart I
aload 0
iload 4
putfield com/bumptech/glide/ListPreloader/lastEnd I
return
.limit locals 5
.limit stack 4
.end method

.method private preload(IZ)V
aload 0
getfield com/bumptech/glide/ListPreloader/isIncreasing Z
iload 2
if_icmpeq L0
aload 0
iload 2
putfield com/bumptech/glide/ListPreloader/isIncreasing Z
aload 0
invokespecial com/bumptech/glide/ListPreloader/cancelAll()V
L0:
iload 2
ifeq L1
aload 0
getfield com/bumptech/glide/ListPreloader/maxPreload I
istore 3
L2:
aload 0
iload 1
iload 3
iload 1
iadd
invokespecial com/bumptech/glide/ListPreloader/preload(II)V
return
L1:
aload 0
getfield com/bumptech/glide/ListPreloader/maxPreload I
ineg
istore 3
goto L2
.limit locals 4
.limit stack 4
.end method

.method private preloadAdapterPosition(Ljava/util/List;IZ)V
.signature "(Ljava/util/List<TT;>;IZ)V"
aload 1
invokeinterface java/util/List/size()I 0
istore 5
iload 3
ifeq L0
iconst_0
istore 4
L1:
iload 4
iload 5
if_icmpge L2
aload 0
aload 1
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
iload 2
iload 4
invokespecial com/bumptech/glide/ListPreloader/preloadItem(Ljava/lang/Object;II)V
iload 4
iconst_1
iadd
istore 4
goto L1
L0:
iload 5
iconst_1
isub
istore 4
L3:
iload 4
iflt L2
aload 0
aload 1
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
iload 2
iload 4
invokespecial com/bumptech/glide/ListPreloader/preloadItem(Ljava/lang/Object;II)V
iload 4
iconst_1
isub
istore 4
goto L3
L2:
return
.limit locals 6
.limit stack 4
.end method

.method private preloadItem(Ljava/lang/Object;II)V
.signature "(TT;II)V"
aload 0
getfield com/bumptech/glide/ListPreloader/preloadDimensionProvider Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
aload 1
iload 2
iload 3
invokeinterface com/bumptech/glide/ListPreloader$PreloadSizeProvider/getPreloadSize(Ljava/lang/Object;II)[I 3
astore 4
aload 4
ifnull L0
aload 0
getfield com/bumptech/glide/ListPreloader/preloadModelProvider Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
aload 1
invokeinterface com/bumptech/glide/ListPreloader$PreloadModelProvider/getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder; 1
aload 0
getfield com/bumptech/glide/ListPreloader/preloadTargetQueue Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
aload 4
iconst_0
iaload
aload 4
iconst_1
iaload
invokevirtual com/bumptech/glide/ListPreloader$PreloadTargetQueue/next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;
invokevirtual com/bumptech/glide/GenericRequestBuilder/into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
pop
L0:
return
.limit locals 5
.limit stack 5
.end method

.method protected getDimensions(Ljava/lang/Object;)[I
.signature "(TT;)[I"
.annotation visible Ljava/lang/Deprecated;
.end annotation
new java/lang/IllegalStateException
dup
ldc "You must either provide a PreloadDimensionProvider or override getDimensions()"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method protected getItems(II)Ljava/util/List;
.signature "(II)Ljava/util/List<TT;>;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
new java/lang/IllegalStateException
dup
ldc "You must either provide a PreloadModelProvider or override getItems()"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method protected getRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(TT;)Lcom/bumptech/glide/GenericRequestBuilder;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
new java/lang/IllegalStateException
dup
ldc "You must either provide a PreloadModelProvider, or override getRequestBuilder()"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 0
iload 4
putfield com/bumptech/glide/ListPreloader/totalItemCount I
iload 2
aload 0
getfield com/bumptech/glide/ListPreloader/lastFirstVisible I
if_icmple L0
aload 0
iload 2
iload 3
iadd
iconst_1
invokespecial com/bumptech/glide/ListPreloader/preload(IZ)V
L1:
aload 0
iload 2
putfield com/bumptech/glide/ListPreloader/lastFirstVisible I
return
L0:
iload 2
aload 0
getfield com/bumptech/glide/ListPreloader/lastFirstVisible I
if_icmpge L1
aload 0
iload 2
iconst_0
invokespecial com/bumptech/glide/ListPreloader/preload(IZ)V
goto L1
.limit locals 5
.limit stack 3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
return
.limit locals 3
.limit stack 0
.end method
