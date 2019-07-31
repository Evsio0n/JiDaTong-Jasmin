.bytecode 50.0
.class synchronized android/support/v4/app/LoaderManagerImpl
.super android/support/v4/app/LoaderManager
.inner class final LoaderInfo inner android/support/v4/app/LoaderManagerImpl$LoaderInfo outer android/support/v4/app/LoaderManagerImpl

.field static 'DEBUG' Z = 0


.field static final 'TAG' Ljava/lang/String; = "LoaderManager"

.field 'mActivity' Landroid/support/v4/app/FragmentActivity;

.field 'mCreatingLoader' Z

.field final 'mInactiveLoaders' Landroid/support/v4/util/SparseArrayCompat; signature "Landroid/support/v4/util/SparseArrayCompat<Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;>;"

.field final 'mLoaders' Landroid/support/v4/util/SparseArrayCompat; signature "Landroid/support/v4/util/SparseArrayCompat<Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;>;"

.field 'mRetaining' Z

.field 'mRetainingStarted' Z

.field 'mStarted' Z

.field final 'mWho' Ljava/lang/String;

.method static <clinit>()V
iconst_0
putstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
return
.limit locals 0
.limit stack 1
.end method

.method <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V
aload 0
invokespecial android/support/v4/app/LoaderManager/<init>()V
aload 0
new android/support/v4/util/SparseArrayCompat
dup
invokespecial android/support/v4/util/SparseArrayCompat/<init>()V
putfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
aload 0
new android/support/v4/util/SparseArrayCompat
dup
invokespecial android/support/v4/util/SparseArrayCompat/<init>()V
putfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
aload 0
aload 1
putfield android/support/v4/app/LoaderManagerImpl/mWho Ljava/lang/String;
aload 0
aload 2
putfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
iload 3
putfield android/support/v4/app/LoaderManagerImpl/mStarted Z
return
.limit locals 4
.limit stack 3
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.signature "(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;"
.catch all from L0 to L1 using L2
L0:
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl/mCreatingLoader Z
aload 0
iload 1
aload 2
aload 3
invokespecial android/support/v4/app/LoaderManagerImpl/createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
astore 2
aload 0
aload 2
invokevirtual android/support/v4/app/LoaderManagerImpl/installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
L1:
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl/mCreatingLoader Z
aload 2
areturn
L2:
astore 2
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl/mCreatingLoader Z
aload 2
athrow
.limit locals 4
.limit stack 4
.end method

.method private createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.signature "(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;"
new android/support/v4/app/LoaderManagerImpl$LoaderInfo
dup
aload 0
iload 1
aload 2
aload 3
invokespecial android/support/v4/app/LoaderManagerImpl$LoaderInfo/<init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
astore 4
aload 4
aload 3
iload 1
aload 2
invokeinterface android/support/v4/app/LoaderManager$LoaderCallbacks/onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader; 2
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
aload 4
areturn
.limit locals 5
.limit stack 6
.end method

.method public destroyLoader(I)V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mCreatingLoader Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "Called while creating a loader"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L1
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "destroyLoader in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/indexOfKey(I)I
istore 2
iload 2
iflt L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 2
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 2
invokevirtual android/support/v4/util/SparseArrayCompat/removeAt(I)V
aload 3
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
L2:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/indexOfKey(I)I
istore 1
iload 1
iflt L3
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/removeAt(I)V
aload 3
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
L3:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L4
aload 0
invokevirtual android/support/v4/app/LoaderManagerImpl/hasRunningLoaders()Z
ifne L4
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/startPendingDeferredFragments()V
L4:
return
.limit locals 4
.limit stack 3
.end method

.method doDestroy()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mRetaining Z
ifne L0
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L1
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Destroying Active in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
iconst_1
isub
istore 1
L2:
iload 1
iflt L0
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
iload 1
iconst_1
isub
istore 1
goto L2
L0:
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L3
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Destroying Inactive in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
iconst_1
isub
istore 1
L4:
iload 1
iflt L5
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
iload 1
iconst_1
isub
istore 1
goto L4
L5:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/clear()V
return
.limit locals 2
.limit stack 3
.end method

.method doReportNextStart()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
iconst_1
isub
istore 1
L0:
iload 1
iflt L1
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
iconst_1
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mReportNextStart Z
iload 1
iconst_1
isub
istore 1
goto L0
L1:
return
.limit locals 2
.limit stack 2
.end method

.method doReportStart()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
iconst_1
isub
istore 1
L0:
iload 1
iflt L1
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/reportStart()V
iload 1
iconst_1
isub
istore 1
goto L0
L1:
return
.limit locals 2
.limit stack 2
.end method

.method doRetain()V
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L0
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Retaining in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mStarted Z
ifne L1
new java/lang/RuntimeException
dup
ldc "here"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual java/lang/RuntimeException/fillInStackTrace()Ljava/lang/Throwable;
pop
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Called doRetain when not started: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L2:
return
L1:
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl/mRetaining Z
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl/mStarted Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
iconst_1
isub
istore 1
L3:
iload 1
iflt L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/retain()V
iload 1
iconst_1
isub
istore 1
goto L3
.limit locals 3
.limit stack 3
.end method

.method doStart()V
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L0
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Starting in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mStarted Z
ifeq L1
new java/lang/RuntimeException
dup
ldc "here"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual java/lang/RuntimeException/fillInStackTrace()Ljava/lang/Throwable;
pop
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Called doStart when already started: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L2:
return
L1:
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl/mStarted Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
iconst_1
isub
istore 1
L3:
iload 1
iflt L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/start()V
iload 1
iconst_1
isub
istore 1
goto L3
.limit locals 3
.limit stack 3
.end method

.method doStop()V
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L0
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Stopping in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mStarted Z
ifne L1
new java/lang/RuntimeException
dup
ldc "here"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual java/lang/RuntimeException/fillInStackTrace()Ljava/lang/Throwable;
pop
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Called doStop when not started: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
return
L1:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
iconst_1
isub
istore 1
L2:
iload 1
iflt L3
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/stop()V
iload 1
iconst_1
isub
istore 1
goto L2
L3:
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl/mStarted Z
return
.limit locals 3
.limit stack 3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
ifle L0
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Active Loaders:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "    "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
iconst_0
istore 5
L1:
iload 5
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 5
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 7
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 5
invokevirtual android/support/v4/util/SparseArrayCompat/keyAt(I)I
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 7
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/toString()Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 7
aload 6
aload 2
aload 3
aload 4
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
iload 5
iconst_1
iadd
istore 5
goto L1
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
ifle L2
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Inactive Loaders:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "    "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
iconst_0
istore 5
L3:
iload 5
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
if_icmpge L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 5
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 7
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 5
invokevirtual android/support/v4/util/SparseArrayCompat/keyAt(I)I
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 7
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/toString()Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 7
aload 6
aload 2
aload 3
aload 4
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
iload 5
iconst_1
iadd
istore 5
goto L3
L2:
return
.limit locals 8
.limit stack 5
.end method

.method finishRetain()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mRetaining Z
ifeq L0
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L1
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Finished Retaining in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl/mRetaining Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
iconst_1
isub
istore 1
L2:
iload 1
iflt L0
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/finishRetain()V
iload 1
iconst_1
isub
istore 1
goto L2
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public getLoader(I)Landroid/support/v4/content/Loader;
.signature "<D:Ljava/lang/Object;>(I)Landroid/support/v4/content/Loader<TD;>;"
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mCreatingLoader Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "Called while creating a loader"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 2
aload 2
ifnull L1
aload 2
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
ifnull L2
aload 2
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
areturn
L2:
aload 2
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
areturn
L1:
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public hasRunningLoaders()Z
iconst_0
istore 4
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
invokevirtual android/support/v4/util/SparseArrayCompat/size()I
istore 3
iconst_0
istore 1
L0:
iload 1
iload 3
if_icmpge L1
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/valueAt(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 5
aload 5
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
ifeq L2
aload 5
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDeliveredData Z
ifne L2
iconst_1
istore 2
L3:
iload 4
iload 2
ior
istore 4
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
iconst_0
istore 2
goto L3
L1:
iload 4
ireturn
.limit locals 6
.limit stack 2
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
.signature "<D:Ljava/lang/Object;>(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TD;>;)Landroid/support/v4/content/Loader<TD;>;"
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mCreatingLoader Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "Called while creating a loader"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 4
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L1
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "initLoader in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ": args="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 4
ifnonnull L2
aload 0
iload 1
aload 2
aload 3
invokespecial android/support/v4/app/LoaderManagerImpl/createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
astore 3
aload 3
astore 2
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L3
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Created new loader "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
astore 2
L3:
aload 2
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
ifeq L4
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mStarted Z
ifeq L4
aload 2
aload 2
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
aload 2
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mData Ljava/lang/Object;
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
L4:
aload 2
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
areturn
L2:
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L5
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Re-using existing loader "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aload 4
aload 3
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
aload 4
astore 2
goto L3
.limit locals 5
.limit stack 4
.end method

.method installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
aload 1
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
aload 1
invokevirtual android/support/v4/util/SparseArrayCompat/put(ILjava/lang/Object;)V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mStarted Z
ifeq L0
aload 1
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/start()V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
.signature "<D:Ljava/lang/Object;>(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TD;>;)Landroid/support/v4/content/Loader<TD;>;"
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mCreatingLoader Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "Called while creating a loader"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 4
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L1
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "restartLoader in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ": args="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 4
ifnull L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 5
aload 5
ifnull L3
aload 4
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
ifeq L4
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L5
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Removing last inactive loader: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aload 5
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDeliveredData Z
aload 5
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
aload 4
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokevirtual android/support/v4/content/Loader/abandon()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
aload 4
invokevirtual android/support/v4/util/SparseArrayCompat/put(ILjava/lang/Object;)V
L2:
aload 0
iload 1
aload 2
aload 3
invokespecial android/support/v4/app/LoaderManagerImpl/createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
areturn
L4:
aload 4
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
ifne L6
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L7
ldc "LoaderManager"
ldc "  Current loader is stopped; replacing"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
aconst_null
invokevirtual android/support/v4/util/SparseArrayCompat/put(ILjava/lang/Object;)V
aload 4
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
goto L2
L6:
aload 4
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
ifnull L8
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L9
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Removing pending loader: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L9:
aload 4
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
aload 4
aconst_null
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
L8:
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L10
ldc "LoaderManager"
ldc "  Enqueuing as new pending loader"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L10:
aload 4
aload 0
iload 1
aload 2
aload 3
invokespecial android/support/v4/app/LoaderManagerImpl/createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
aload 4
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
areturn
L3:
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L11
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Making last loader inactive: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L11:
aload 4
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokevirtual android/support/v4/content/Loader/abandon()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
iload 1
aload 4
invokevirtual android/support/v4/util/SparseArrayCompat/put(ILjava/lang/Object;)V
goto L2
.limit locals 6
.limit stack 5
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
sipush 128
invokespecial java/lang/StringBuilder/<init>(I)V
astore 1
aload 1
ldc "LoaderManager{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ldc " in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 1
invokestatic android/support/v4/util/DebugUtils/buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
aload 1
ldc "}}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method updateActivity(Landroid/support/v4/app/FragmentActivity;)V
aload 0
aload 1
putfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
return
.limit locals 2
.limit stack 2
.end method
