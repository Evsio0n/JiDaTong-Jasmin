.bytecode 50.0
.class public synchronized android/support/v4/content/Loader
.super java/lang/Object
.signature "<D:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class public final ForceLoadContentObserver inner android/support/v4/content/Loader$ForceLoadContentObserver outer android/support/v4/content/Loader
.inner class public static abstract interface OnLoadCompleteListener inner android/support/v4/content/Loader$OnLoadCompleteListener outer android/support/v4/content/Loader

.field 'mAbandoned' Z

.field 'mContentChanged' Z

.field 'mContext' Landroid/content/Context;

.field 'mId' I

.field 'mListener' Landroid/support/v4/content/Loader$OnLoadCompleteListener; signature "Landroid/support/v4/content/Loader$OnLoadCompleteListener<TD;>;"

.field 'mReset' Z

.field 'mStarted' Z

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield android/support/v4/content/Loader/mStarted Z
aload 0
iconst_0
putfield android/support/v4/content/Loader/mAbandoned Z
aload 0
iconst_1
putfield android/support/v4/content/Loader/mReset Z
aload 0
iconst_0
putfield android/support/v4/content/Loader/mContentChanged Z
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield android/support/v4/content/Loader/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public abandon()V
aload 0
iconst_1
putfield android/support/v4/content/Loader/mAbandoned Z
aload 0
invokevirtual android/support/v4/content/Loader/onAbandon()V
return
.limit locals 1
.limit stack 2
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
.signature "(TD;)Ljava/lang/String;"
new java/lang/StringBuilder
dup
bipush 64
invokespecial java/lang/StringBuilder/<init>(I)V
astore 2
aload 1
aload 2
invokestatic android/support/v4/util/DebugUtils/buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
aload 2
ldc "}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public deliverResult(Ljava/lang/Object;)V
.signature "(TD;)V"
aload 0
getfield android/support/v4/content/Loader/mListener Landroid/support/v4/content/Loader$OnLoadCompleteListener;
ifnull L0
aload 0
getfield android/support/v4/content/Loader/mListener Landroid/support/v4/content/Loader$OnLoadCompleteListener;
aload 0
aload 1
invokeinterface android/support/v4/content/Loader$OnLoadCompleteListener/onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mId="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/Loader/mId I
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc " mListener="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/Loader/mListener Landroid/support/v4/content/Loader$OnLoadCompleteListener;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mStarted="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/Loader/mStarted Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mContentChanged="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/Loader/mContentChanged Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mAbandoned="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/Loader/mAbandoned Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mReset="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/Loader/mReset Z
invokevirtual java/io/PrintWriter/println(Z)V
return
.limit locals 5
.limit stack 2
.end method

.method public forceLoad()V
aload 0
invokevirtual android/support/v4/content/Loader/onForceLoad()V
return
.limit locals 1
.limit stack 1
.end method

.method public getContext()Landroid/content/Context;
aload 0
getfield android/support/v4/content/Loader/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()I
aload 0
getfield android/support/v4/content/Loader/mId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isAbandoned()Z
aload 0
getfield android/support/v4/content/Loader/mAbandoned Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isReset()Z
aload 0
getfield android/support/v4/content/Loader/mReset Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isStarted()Z
aload 0
getfield android/support/v4/content/Loader/mStarted Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onAbandon()V
return
.limit locals 1
.limit stack 0
.end method

.method public onContentChanged()V
aload 0
getfield android/support/v4/content/Loader/mStarted Z
ifeq L0
aload 0
invokevirtual android/support/v4/content/Loader/forceLoad()V
return
L0:
aload 0
iconst_1
putfield android/support/v4/content/Loader/mContentChanged Z
return
.limit locals 1
.limit stack 2
.end method

.method protected onForceLoad()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onReset()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onStartLoading()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onStopLoading()V
return
.limit locals 1
.limit stack 0
.end method

.method public registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
.signature "(ILandroid/support/v4/content/Loader$OnLoadCompleteListener<TD;>;)V"
aload 0
getfield android/support/v4/content/Loader/mListener Landroid/support/v4/content/Loader$OnLoadCompleteListener;
ifnull L0
new java/lang/IllegalStateException
dup
ldc "There is already a listener registered"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 2
putfield android/support/v4/content/Loader/mListener Landroid/support/v4/content/Loader$OnLoadCompleteListener;
aload 0
iload 1
putfield android/support/v4/content/Loader/mId I
return
.limit locals 3
.limit stack 3
.end method

.method public reset()V
aload 0
invokevirtual android/support/v4/content/Loader/onReset()V
aload 0
iconst_1
putfield android/support/v4/content/Loader/mReset Z
aload 0
iconst_0
putfield android/support/v4/content/Loader/mStarted Z
aload 0
iconst_0
putfield android/support/v4/content/Loader/mAbandoned Z
aload 0
iconst_0
putfield android/support/v4/content/Loader/mContentChanged Z
return
.limit locals 1
.limit stack 2
.end method

.method public final startLoading()V
aload 0
iconst_1
putfield android/support/v4/content/Loader/mStarted Z
aload 0
iconst_0
putfield android/support/v4/content/Loader/mReset Z
aload 0
iconst_0
putfield android/support/v4/content/Loader/mAbandoned Z
aload 0
invokevirtual android/support/v4/content/Loader/onStartLoading()V
return
.limit locals 1
.limit stack 2
.end method

.method public stopLoading()V
aload 0
iconst_0
putfield android/support/v4/content/Loader/mStarted Z
aload 0
invokevirtual android/support/v4/content/Loader/onStopLoading()V
return
.limit locals 1
.limit stack 2
.end method

.method public takeContentChanged()Z
aload 0
getfield android/support/v4/content/Loader/mContentChanged Z
istore 1
aload 0
iconst_0
putfield android/support/v4/content/Loader/mContentChanged Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
bipush 64
invokespecial java/lang/StringBuilder/<init>(I)V
astore 1
aload 0
aload 1
invokestatic android/support/v4/util/DebugUtils/buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
aload 1
ldc " id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
getfield android/support/v4/content/Loader/mId I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 1
ldc "}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
.signature "(Landroid/support/v4/content/Loader$OnLoadCompleteListener<TD;>;)V"
aload 0
getfield android/support/v4/content/Loader/mListener Landroid/support/v4/content/Loader$OnLoadCompleteListener;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "No listener register"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/content/Loader/mListener Landroid/support/v4/content/Loader$OnLoadCompleteListener;
aload 1
if_acmpeq L1
new java/lang/IllegalArgumentException
dup
ldc "Attempting to unregister the wrong listener"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aconst_null
putfield android/support/v4/content/Loader/mListener Landroid/support/v4/content/Loader$OnLoadCompleteListener;
return
.limit locals 2
.limit stack 3
.end method
