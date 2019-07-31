.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/LoadingLayoutProxy
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/ILoadingLayout

.field private final 'mLoadingLayouts' Ljava/util/HashSet; signature "Ljava/util/HashSet<Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/handmark/pulltorefresh/library/LoadingLayoutProxy/mLoadingLayouts Ljava/util/HashSet;
return
.limit locals 1
.limit stack 3
.end method

.method public addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
aload 1
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/LoadingLayoutProxy/mLoadingLayouts Ljava/util/HashSet;
aload 1
invokevirtual java/util/HashSet/add(Ljava/lang/Object;)Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
aload 0
getfield com/handmark/pulltorefresh/library/LoadingLayoutProxy/mLoadingLayouts Ljava/util/HashSet;
invokevirtual java/util/HashSet/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/handmark/pulltorefresh/library/internal/LoadingLayout
aload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setLastUpdatedLabel(Ljava/lang/CharSequence;)V
goto L0
.limit locals 3
.limit stack 2
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/handmark/pulltorefresh/library/LoadingLayoutProxy/mLoadingLayouts Ljava/util/HashSet;
invokevirtual java/util/HashSet/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/handmark/pulltorefresh/library/internal/LoadingLayout
aload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
goto L0
.limit locals 3
.limit stack 2
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
aload 0
getfield com/handmark/pulltorefresh/library/LoadingLayoutProxy/mLoadingLayouts Ljava/util/HashSet;
invokevirtual java/util/HashSet/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/handmark/pulltorefresh/library/internal/LoadingLayout
aload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setPullLabel(Ljava/lang/CharSequence;)V
goto L0
.limit locals 3
.limit stack 2
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
aload 0
getfield com/handmark/pulltorefresh/library/LoadingLayoutProxy/mLoadingLayouts Ljava/util/HashSet;
invokevirtual java/util/HashSet/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/handmark/pulltorefresh/library/internal/LoadingLayout
aload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setRefreshingLabel(Ljava/lang/CharSequence;)V
goto L0
.limit locals 3
.limit stack 2
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
aload 0
getfield com/handmark/pulltorefresh/library/LoadingLayoutProxy/mLoadingLayouts Ljava/util/HashSet;
invokevirtual java/util/HashSet/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/handmark/pulltorefresh/library/internal/LoadingLayout
aload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setReleaseLabel(Ljava/lang/CharSequence;)V
goto L0
.limit locals 3
.limit stack 2
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
aload 0
getfield com/handmark/pulltorefresh/library/LoadingLayoutProxy/mLoadingLayouts Ljava/util/HashSet;
invokevirtual java/util/HashSet/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/handmark/pulltorefresh/library/internal/LoadingLayout
aload 1
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setTextTypeface(Landroid/graphics/Typeface;)V
goto L0
.limit locals 3
.limit stack 2
.end method
