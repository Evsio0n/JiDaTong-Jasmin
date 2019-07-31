.bytecode 50.0
.class final synchronized android/support/v4/app/LoaderManagerImpl$LoaderInfo
.super java/lang/Object
.implements android/support/v4/content/Loader$OnLoadCompleteListener
.signature "Ljava/lang/Object;Landroid/support/v4/content/Loader$OnLoadCompleteListener<Ljava/lang/Object;>;"
.inner class final LoaderInfo inner android/support/v4/app/LoaderManagerImpl$LoaderInfo outer android/support/v4/app/LoaderManagerImpl

.field final 'mArgs' Landroid/os/Bundle;

.field 'mCallbacks' Landroid/support/v4/app/LoaderManager$LoaderCallbacks; signature "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"

.field 'mData' Ljava/lang/Object;

.field 'mDeliveredData' Z

.field 'mDestroyed' Z

.field 'mHaveData' Z

.field final 'mId' I

.field 'mListenerRegistered' Z

.field 'mLoader' Landroid/support/v4/content/Loader; signature "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"

.field 'mPendingLoader' Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

.field 'mReportNextStart' Z

.field 'mRetaining' Z

.field 'mRetainingStarted' Z

.field 'mStarted' Z

.field final synthetic 'this$0' Landroid/support/v4/app/LoaderManagerImpl;

.method public <init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
.signature "(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;)V"
aload 0
aload 1
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 2
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
aload 0
aload 3
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mArgs Landroid/os/Bundle;
aload 0
aload 4
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
return
.limit locals 5
.limit stack 2
.end method

.method callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.signature "(Landroid/support/v4/content/Loader<Ljava/lang/Object;>;Ljava/lang/Object;)V"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
ifnull L4
aconst_null
astore 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
astore 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
ldc "onLoadFinished"
putfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
L0:
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L1
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  onLoadFinished in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ": "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
aload 2
invokevirtual android/support/v4/content/Loader/dataToString(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
aload 1
aload 2
invokeinterface android/support/v4/app/LoaderManager$LoaderCallbacks/onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V 2
L3:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L5
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 3
putfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
L5:
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDeliveredData Z
L4:
return
L2:
astore 1
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L6
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 3
putfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
L6:
aload 1
athrow
.limit locals 4
.limit stack 4
.end method

.method destroy()V
.catch all from L0 to L1 using L2
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L3
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Destroying: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDestroyed Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDeliveredData Z
istore 1
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDeliveredData Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
ifnull L4
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
ifnull L4
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
ifeq L4
iload 1
ifeq L4
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L5
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Reseting: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aconst_null
astore 2
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
astore 2
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
ldc "onLoaderReset"
putfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokeinterface android/support/v4/app/LoaderManager$LoaderCallbacks/onLoaderReset(Landroid/support/v4/content/Loader;)V 1
L1:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L4
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 2
putfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
L4:
aload 0
aconst_null
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
aload 0
aconst_null
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mData Ljava/lang/Object;
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
ifnull L6
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mListenerRegistered Z
ifeq L7
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mListenerRegistered Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
aload 0
invokevirtual android/support/v4/content/Loader/unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
L7:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokevirtual android/support/v4/content/Loader/reset()V
L6:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
ifnull L8
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
L8:
return
L2:
astore 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L9
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 2
putfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
L9:
aload 3
athrow
.limit locals 4
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
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc " mArgs="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mArgs Landroid/os/Bundle;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mCallbacks="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mLoader="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
ifnull L0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
aload 3
aload 4
invokevirtual android/support/v4/content/Loader/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
ifne L1
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDeliveredData Z
ifeq L2
L1:
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mHaveData="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc "  mDeliveredData="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDeliveredData Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mData="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mData Ljava/lang/Object;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L2:
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mStarted="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mReportNextStart="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mReportNextStart Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mDestroyed="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDestroyed Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mRetaining="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetaining Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mRetainingStarted="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetainingStarted Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mListenerRegistered="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mListenerRegistered Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
ifnull L3
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Pending Loader "
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invokevirtual java/io/PrintWriter/print(Ljava/lang/Object;)V
aload 3
ldc ":"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
aload 3
aload 4
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L3:
return
.limit locals 5
.limit stack 5
.end method

.method finishRetain()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetaining Z
ifeq L0
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L1
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Finished Retaining: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetaining Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetainingStarted Z
if_icmpeq L0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
ifne L0
aload 0
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/stop()V
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
ifeq L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
ifeq L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mReportNextStart Z
ifne L2
aload 0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mData Ljava/lang/Object;
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
L2:
return
.limit locals 1
.limit stack 3
.end method

.method public onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.signature "(Landroid/support/v4/content/Loader<Ljava/lang/Object;>;Ljava/lang/Object;)V"
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L0
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onLoadComplete: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDestroyed Z
ifeq L1
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L2
ldc "LoaderManager"
ldc "  Ignoring load complete -- destroyed"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
return
L1:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
invokevirtual android/support/v4/util/SparseArrayCompat/get(I)Ljava/lang/Object;
aload 0
if_acmpeq L3
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L2
ldc "LoaderManager"
ldc "  Ignoring load complete -- not active"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L3:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
astore 3
aload 3
ifnull L4
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L5
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Switching to pending loader: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aload 0
aconst_null
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mPendingLoader Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mLoaders Landroid/support/v4/util/SparseArrayCompat;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
aconst_null
invokevirtual android/support/v4/util/SparseArrayCompat/put(ILjava/lang/Object;)V
aload 0
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
aload 3
invokevirtual android/support/v4/app/LoaderManagerImpl/installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
return
L4:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mData Ljava/lang/Object;
aload 2
if_acmpne L6
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
ifne L7
L6:
aload 0
aload 2
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mData Ljava/lang/Object;
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
ifeq L7
aload 0
aload 1
aload 2
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
L7:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
invokevirtual android/support/v4/util/SparseArrayCompat/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl$LoaderInfo
astore 1
aload 1
ifnull L8
aload 1
aload 0
if_acmpeq L8
aload 1
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mDeliveredData Z
aload 1
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/destroy()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mInactiveLoaders Landroid/support/v4/util/SparseArrayCompat;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
invokevirtual android/support/v4/util/SparseArrayCompat/remove(I)V
L8:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/hasRunningLoaders()Z
ifne L2
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/this$0 Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/startPendingDeferredFragments()V
return
.limit locals 4
.limit stack 3
.end method

.method reportStart()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
ifeq L0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mReportNextStart Z
ifeq L0
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mReportNextStart Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mHaveData Z
ifeq L0
aload 0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mData Ljava/lang/Object;
invokevirtual android/support/v4/app/LoaderManagerImpl$LoaderInfo/callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method retain()V
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L0
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Retaining: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetaining Z
aload 0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetainingStarted Z
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
aload 0
aconst_null
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
return
.limit locals 1
.limit stack 3
.end method

.method start()V
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetaining Z
ifeq L0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetainingStarted Z
ifeq L0
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
L1:
return
L0:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
ifne L1
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L2
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Starting: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
ifnonnull L3
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
ifnull L3
aload 0
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mCallbacks Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mArgs Landroid/os/Bundle;
invokeinterface android/support/v4/app/LoaderManager$LoaderCallbacks/onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader; 2
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
L3:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
ifnull L1
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/isMemberClass()Z
ifeq L4
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifne L4
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Object returned from onCreateLoader must not be a non-static inner member class: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mListenerRegistered Z
ifne L5
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
aload 0
invokevirtual android/support/v4/content/Loader/registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
aload 0
iconst_1
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mListenerRegistered Z
L5:
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokevirtual android/support/v4/content/Loader/startLoading()V
return
.limit locals 1
.limit stack 4
.end method

.method stop()V
getstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
ifeq L0
ldc "LoaderManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Stopping: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mStarted Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mRetaining Z
ifne L1
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
ifnull L1
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mListenerRegistered Z
ifeq L1
aload 0
iconst_0
putfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mListenerRegistered Z
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
aload 0
invokevirtual android/support/v4/content/Loader/unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
invokevirtual android/support/v4/content/Loader/stopLoading()V
L1:
return
.limit locals 1
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
bipush 64
invokespecial java/lang/StringBuilder/<init>(I)V
astore 1
aload 1
ldc "LoaderInfo{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ldc " #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mId I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 1
ldc " : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield android/support/v4/app/LoaderManagerImpl$LoaderInfo/mLoader Landroid/support/v4/content/Loader;
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
