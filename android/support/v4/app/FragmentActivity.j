.bytecode 50.0
.class public synchronized android/support/v4/app/FragmentActivity
.super android/app/Activity
.inner class inner android/support/v4/app/FragmentActivity$1
.inner class inner android/support/v4/app/FragmentActivity$2
.inner class static FragmentTag inner android/support/v4/app/FragmentActivity$FragmentTag outer android/support/v4/app/FragmentActivity
.inner class static final NonConfigurationInstances inner android/support/v4/app/FragmentActivity$NonConfigurationInstances outer android/support/v4/app/FragmentActivity

.field static final 'FRAGMENTS_TAG' Ljava/lang/String; = "android:support:fragments"

.field private static final 'HONEYCOMB' I = 11


.field static final 'MSG_REALLY_STOPPED' I = 1


.field static final 'MSG_RESUME_PENDING' I = 2


.field private static final 'TAG' Ljava/lang/String; = "FragmentActivity"

.field 'mAllLoaderManagers' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManagerImpl;>;"

.field 'mCheckedForLoaderManager' Z

.field final 'mContainer' Landroid/support/v4/app/FragmentContainer;

.field 'mCreated' Z

.field final 'mFragments' Landroid/support/v4/app/FragmentManagerImpl;

.field final 'mHandler' Landroid/os/Handler;

.field 'mLoaderManager' Landroid/support/v4/app/LoaderManagerImpl;

.field 'mLoadersStarted' Z

.field 'mOptionsMenuInvalidated' Z

.field 'mReallyStopped' Z

.field 'mResumed' Z

.field 'mRetaining' Z

.field 'mStopped' Z

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new android/support/v4/app/FragmentActivity$1
dup
aload 0
invokespecial android/support/v4/app/FragmentActivity$1/<init>(Landroid/support/v4/app/FragmentActivity;)V
putfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
aload 0
new android/support/v4/app/FragmentManagerImpl
dup
invokespecial android/support/v4/app/FragmentManagerImpl/<init>()V
putfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 0
new android/support/v4/app/FragmentActivity$2
dup
aload 0
invokespecial android/support/v4/app/FragmentActivity$2/<init>(Landroid/support/v4/app/FragmentActivity;)V
putfield android/support/v4/app/FragmentActivity/mContainer Landroid/support/v4/app/FragmentContainer;
return
.limit locals 1
.limit stack 4
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
aload 2
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ifnonnull L0
aload 2
ldc "null"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L1:
return
L0:
aload 2
aload 3
invokestatic android/support/v4/app/FragmentActivity/viewToString(Landroid/view/View;)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 3
instanceof android/view/ViewGroup
ifeq L1
aload 3
checkcast android/view/ViewGroup
astore 3
aload 3
invokevirtual android/view/ViewGroup/getChildCount()I
istore 5
iload 5
ifle L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
iconst_0
istore 4
L2:
iload 4
iload 5
if_icmpge L1
aload 0
aload 1
aload 2
aload 3
iload 4
invokevirtual android/view/ViewGroup/getChildAt(I)Landroid/view/View;
invokespecial android/support/v4/app/FragmentActivity/dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
iload 4
iconst_1
iadd
istore 4
goto L2
.limit locals 6
.limit stack 5
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
.catch android/content/res/Resources$NotFoundException from L0 to L1 using L2
.catch android/content/res/Resources$NotFoundException from L1 to L3 using L2
bipush 70
istore 3
bipush 46
istore 2
new java/lang/StringBuilder
dup
sipush 128
invokespecial java/lang/StringBuilder/<init>(I)V
astore 5
aload 5
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
bipush 123
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 5
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
bipush 32
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/getVisibility()I
lookupswitch
0 : L4
4 : L5
8 : L6
default : L7
L7:
aload 5
bipush 46
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L8:
aload 0
invokevirtual android/view/View/isFocusable()Z
ifeq L9
bipush 70
istore 1
L10:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/isEnabled()Z
ifeq L11
bipush 69
istore 1
L12:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/willNotDraw()Z
ifeq L13
bipush 46
istore 1
L14:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/isHorizontalScrollBarEnabled()Z
ifeq L15
bipush 72
istore 1
L16:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/isVerticalScrollBarEnabled()Z
ifeq L17
bipush 86
istore 1
L18:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/isClickable()Z
ifeq L19
bipush 67
istore 1
L20:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/isLongClickable()Z
ifeq L21
bipush 76
istore 1
L22:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 5
bipush 32
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/isFocused()Z
ifeq L23
iload 3
istore 1
L24:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/isSelected()Z
ifeq L25
bipush 83
istore 1
L26:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 2
istore 1
aload 0
invokevirtual android/view/View/isPressed()Z
ifeq L27
bipush 80
istore 1
L27:
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 5
bipush 32
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 5
aload 0
invokevirtual android/view/View/getLeft()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 5
bipush 44
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 5
aload 0
invokevirtual android/view/View/getTop()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 5
bipush 45
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 5
aload 0
invokevirtual android/view/View/getRight()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 5
bipush 44
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 5
aload 0
invokevirtual android/view/View/getBottom()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/getId()I
istore 4
iload 4
iconst_m1
if_icmpeq L3
aload 5
ldc " #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual android/view/View/getResources()Landroid/content/res/Resources;
astore 6
iload 4
ifeq L3
aload 6
ifnull L3
ldc_w -16777216
iload 4
iand
lookupswitch
16777216 : L28
2130706432 : L29
default : L0
L0:
aload 6
iload 4
invokevirtual android/content/res/Resources/getResourcePackageName(I)Ljava/lang/String;
astore 0
L1:
aload 6
iload 4
invokevirtual android/content/res/Resources/getResourceTypeName(I)Ljava/lang/String;
astore 7
aload 6
iload 4
invokevirtual android/content/res/Resources/getResourceEntryName(I)Ljava/lang/String;
astore 6
aload 5
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 5
ldc "}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L4:
aload 5
bipush 86
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
goto L8
L5:
aload 5
bipush 73
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
goto L8
L6:
aload 5
bipush 71
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
goto L8
L9:
bipush 46
istore 1
goto L10
L11:
bipush 46
istore 1
goto L12
L13:
bipush 68
istore 1
goto L14
L15:
bipush 46
istore 1
goto L16
L17:
bipush 46
istore 1
goto L18
L19:
bipush 46
istore 1
goto L20
L21:
bipush 46
istore 1
goto L22
L23:
bipush 46
istore 1
goto L24
L25:
bipush 46
istore 1
goto L26
L29:
ldc "app"
astore 0
goto L1
L28:
ldc "android"
astore 0
goto L1
L2:
astore 0
goto L3
.limit locals 8
.limit stack 3
.end method

.method doReallyStop(Z)V
aload 0
getfield android/support/v4/app/FragmentActivity/mReallyStopped Z
ifne L0
aload 0
iconst_1
putfield android/support/v4/app/FragmentActivity/mReallyStopped Z
aload 0
iload 1
putfield android/support/v4/app/FragmentActivity/mRetaining Z
aload 0
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
invokevirtual android/support/v4/app/FragmentActivity/onReallyStop()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
L0:
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Local FragmentActivity "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc " State:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 3
aload 5
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mCreated="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentActivity/mCreated Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc "mResumed="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentActivity/mResumed Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mStopped="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentActivity/mStopped Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mReallyStopped="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentActivity/mReallyStopped Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 3
aload 5
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mLoadersStarted="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentActivity/mLoadersStarted Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L1
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Loader Manager "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc ":"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
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
invokevirtual android/support/v4/app/LoaderManagerImpl/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L1:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 1
aload 2
aload 3
aload 4
invokevirtual android/support/v4/app/FragmentManagerImpl/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "View Hierarchy:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
aload 0
invokevirtual android/support/v4/app/FragmentActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
invokespecial android/support/v4/app/FragmentActivity/dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
return
.limit locals 6
.limit stack 5
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
aload 0
invokevirtual android/support/v4/app/FragmentActivity/getLastNonConfigurationInstance()Ljava/lang/Object;
checkcast android/support/v4/app/FragmentActivity$NonConfigurationInstances
astore 1
aload 1
ifnull L0
aload 1
getfield android/support/v4/app/FragmentActivity$NonConfigurationInstances/custom Ljava/lang/Object;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
L0:
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl
astore 4
aload 4
ifnonnull L1
iload 3
ifeq L2
new android/support/v4/app/LoaderManagerImpl
dup
aload 1
aload 0
iload 2
invokespecial android/support/v4/app/LoaderManagerImpl/<init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V
astore 4
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
aload 1
aload 4
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L2:
aload 4
areturn
L1:
aload 4
aload 0
invokevirtual android/support/v4/app/LoaderManagerImpl/updateActivity(Landroid/support/v4/app/FragmentActivity;)V
aload 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
areturn
L0:
aload 0
iconst_1
putfield android/support/v4/app/FragmentActivity/mCheckedForLoaderManager Z
aload 0
aload 0
aconst_null
aload 0
getfield android/support/v4/app/FragmentActivity/mLoadersStarted Z
iconst_1
invokevirtual android/support/v4/app/FragmentActivity/getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
putfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
areturn
.limit locals 1
.limit stack 5
.end method

.method invalidateSupportFragment(Ljava/lang/String;)V
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/support/v4/app/LoaderManagerImpl
astore 2
aload 2
ifnull L0
aload 2
getfield android/support/v4/app/LoaderManagerImpl/mRetaining Z
ifne L0
aload 2
invokevirtual android/support/v4/app/LoaderManagerImpl/doDestroy()V
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/noteStateNotSaved()V
iload 1
bipush 16
ishr
istore 4
iload 4
ifeq L0
iload 4
iconst_1
isub
istore 4
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnull L1
iload 4
iflt L1
iload 4
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmplt L2
L1:
ldc "FragmentActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Activity result fragment index out of range: 0x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L2:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 4
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 5
aload 5
ifnonnull L3
ldc "FragmentActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Activity result no fragment exists for index: 0x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L3:
aload 5
ldc_w 65535
iload 1
iand
iload 2
aload 3
invokevirtual android/support/v4/app/Fragment/onActivityResult(IILandroid/content/Intent;)V
return
L0:
aload 0
iload 1
iload 2
aload 3
invokespecial android/app/Activity/onActivityResult(IILandroid/content/Intent;)V
return
.limit locals 6
.limit stack 4
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onBackPressed()V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/popBackStackImmediate()Z
ifne L0
aload 0
invokevirtual android/support/v4/app/FragmentActivity/finish()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
aload 1
invokespecial android/app/Activity/onConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aconst_null
astore 2
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 0
aload 0
getfield android/support/v4/app/FragmentActivity/mContainer Landroid/support/v4/app/FragmentContainer;
aconst_null
invokevirtual android/support/v4/app/FragmentManagerImpl/attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
aload 0
invokevirtual android/support/v4/app/FragmentActivity/getLayoutInflater()Landroid/view/LayoutInflater;
invokevirtual android/view/LayoutInflater/getFactory()Landroid/view/LayoutInflater$Factory;
ifnonnull L0
aload 0
invokevirtual android/support/v4/app/FragmentActivity/getLayoutInflater()Landroid/view/LayoutInflater;
aload 0
invokevirtual android/view/LayoutInflater/setFactory(Landroid/view/LayoutInflater$Factory;)V
L0:
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual android/support/v4/app/FragmentActivity/getLastNonConfigurationInstance()Ljava/lang/Object;
checkcast android/support/v4/app/FragmentActivity$NonConfigurationInstances
astore 3
aload 3
ifnull L1
aload 0
aload 3
getfield android/support/v4/app/FragmentActivity$NonConfigurationInstances/loaders Ljava/util/HashMap;
putfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
L1:
aload 1
ifnull L2
aload 1
ldc "android:support:fragments"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
astore 4
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
astore 5
aload 2
astore 1
aload 3
ifnull L3
aload 3
getfield android/support/v4/app/FragmentActivity$NonConfigurationInstances/fragments Ljava/util/ArrayList;
astore 1
L3:
aload 5
aload 4
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
L2:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchCreate()V
return
.limit locals 6
.limit stack 4
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
iload 1
ifne L0
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onCreatePanelMenu(ILandroid/view/Menu;)Z
istore 3
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 2
aload 0
invokevirtual android/support/v4/app/FragmentActivity/getMenuInflater()Landroid/view/MenuInflater;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
istore 4
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L1
iload 3
iload 4
ior
ireturn
L1:
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onCreatePanelMenu(ILandroid/view/Menu;)Z
ireturn
.limit locals 5
.limit stack 3
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
aconst_null
astore 7
ldc "fragment"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
aload 1
aload 2
aload 3
invokespecial android/app/Activity/onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
areturn
L0:
aload 3
aconst_null
ldc "class"
invokeinterface android/util/AttributeSet/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 1
aload 2
aload 3
getstatic android/support/v4/app/FragmentActivity$FragmentTag/Fragment [I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 2
aload 1
astore 6
aload 1
ifnonnull L1
aload 2
iconst_0
invokevirtual android/content/res/TypedArray/getString(I)Ljava/lang/String;
astore 6
L1:
aload 2
iconst_1
iconst_m1
invokevirtual android/content/res/TypedArray/getResourceId(II)I
istore 5
aload 2
iconst_2
invokevirtual android/content/res/TypedArray/getString(I)Ljava/lang/String;
astore 8
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
iconst_0
ifeq L2
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L2:
iconst_m1
ifne L3
iload 5
iconst_m1
if_icmpne L3
aload 8
ifnonnull L3
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokeinterface android/util/AttributeSet/getPositionDescription()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ": Must specify unique android:id, android:tag, or have a parent with an id for "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 7
astore 2
iload 5
iconst_m1
if_icmpeq L4
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
iload 5
invokevirtual android/support/v4/app/FragmentManagerImpl/findFragmentById(I)Landroid/support/v4/app/Fragment;
astore 2
L4:
aload 2
astore 1
aload 2
ifnonnull L5
aload 2
astore 1
aload 8
ifnull L5
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 8
invokevirtual android/support/v4/app/FragmentManagerImpl/findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
astore 1
L5:
aload 1
astore 2
aload 1
ifnonnull L6
aload 1
astore 2
iconst_m1
ifeq L6
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/findFragmentById(I)Landroid/support/v4/app/Fragment;
astore 2
L6:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L7
ldc "FragmentActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onCreateView: id=0x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " fname="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " existing="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
aload 2
ifnonnull L8
aload 0
aload 6
invokestatic android/support/v4/app/Fragment/instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
astore 2
aload 2
iconst_1
putfield android/support/v4/app/Fragment/mFromLayout Z
iload 5
ifeq L9
iload 5
istore 4
L10:
aload 2
iload 4
putfield android/support/v4/app/Fragment/mFragmentId I
aload 2
iconst_0
putfield android/support/v4/app/Fragment/mContainerId I
aload 2
aload 8
putfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
aload 2
iconst_1
putfield android/support/v4/app/Fragment/mInLayout Z
aload 2
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
putfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 2
aload 0
aload 3
aload 2
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 2
iconst_1
invokevirtual android/support/v4/app/FragmentManagerImpl/addFragment(Landroid/support/v4/app/Fragment;Z)V
L11:
aload 2
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnonnull L12
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " did not create a view."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L9:
iconst_0
istore 4
goto L10
L8:
aload 2
getfield android/support/v4/app/Fragment/mInLayout Z
ifeq L13
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokeinterface android/util/AttributeSet/getPositionDescription()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ": Duplicate id 0x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", tag "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", or parent id 0x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_0
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " with another fragment for "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L13:
aload 2
iconst_1
putfield android/support/v4/app/Fragment/mInLayout Z
aload 2
getfield android/support/v4/app/Fragment/mRetaining Z
ifne L14
aload 2
aload 0
aload 3
aload 2
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
L14:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;)V
goto L11
L12:
iload 5
ifeq L15
aload 2
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
iload 5
invokevirtual android/view/View/setId(I)V
L15:
aload 2
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnonnull L16
aload 2
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 8
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L16:
aload 2
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
areturn
.limit locals 9
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
aload 0
iconst_0
invokevirtual android/support/v4/app/FragmentActivity/doReallyStop(Z)V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchDestroy()V
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doDestroy()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
getstatic android/os/Build$VERSION/SDK_INT I
iconst_5
if_icmpge L0
iload 1
iconst_4
if_icmpne L0
aload 2
invokevirtual android/view/KeyEvent/getRepeatCount()I
ifne L0
aload 0
invokevirtual android/support/v4/app/FragmentActivity/onBackPressed()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public onLowMemory()V
aload 0
invokespecial android/app/Activity/onLowMemory()V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchLowMemory()V
return
.limit locals 1
.limit stack 1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onMenuItemSelected(ILandroid/view/MenuItem;)Z
ifeq L0
iconst_1
ireturn
L0:
iload 1
lookupswitch
0 : L1
6 : L2
default : L3
L3:
iconst_0
ireturn
L1:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
ireturn
L2:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchContextItemSelected(Landroid/view/MenuItem;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
aload 0
aload 1
invokespecial android/app/Activity/onNewIntent(Landroid/content/Intent;)V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/noteStateNotSaved()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
iload 1
tableswitch 0
L0
default : L1
L1:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onPanelClosed(ILandroid/view/Menu;)V
return
L0:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchOptionsMenuClosed(Landroid/view/Menu;)V
goto L1
.limit locals 3
.limit stack 3
.end method

.method protected onPause()V
aload 0
invokespecial android/app/Activity/onPause()V
aload 0
iconst_0
putfield android/support/v4/app/FragmentActivity/mResumed Z
aload 0
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/hasMessages(I)Z
ifeq L0
aload 0
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
invokevirtual android/support/v4/app/FragmentActivity/onResumeFragments()V
L0:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchPause()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onPostResume()V
aload 0
invokespecial android/app/Activity/onPostResume()V
aload 0
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
invokevirtual android/support/v4/app/FragmentActivity/onResumeFragments()V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
return
.limit locals 1
.limit stack 2
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
iconst_0
istore 5
iload 1
ifne L0
aload 3
ifnull L0
aload 0
getfield android/support/v4/app/FragmentActivity/mOptionsMenuInvalidated Z
ifeq L1
aload 0
iconst_0
putfield android/support/v4/app/FragmentActivity/mOptionsMenuInvalidated Z
aload 3
invokeinterface android/view/Menu/clear()V 0
aload 0
iload 1
aload 3
invokevirtual android/support/v4/app/FragmentActivity/onCreatePanelMenu(ILandroid/view/Menu;)Z
pop
L1:
iload 5
istore 4
aload 0
iload 1
aload 2
aload 3
invokespecial android/app/Activity/onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
aload 3
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
ior
ifeq L2
iload 5
istore 4
aload 3
invokeinterface android/view/Menu/hasVisibleItems()Z 0
ifeq L2
iconst_1
istore 4
L2:
iload 4
ireturn
L0:
aload 0
iload 1
aload 2
aload 3
invokespecial android/app/Activity/onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
ireturn
.limit locals 6
.limit stack 4
.end method

.method onReallyStop()V
aload 0
getfield android/support/v4/app/FragmentActivity/mLoadersStarted Z
ifeq L0
aload 0
iconst_0
putfield android/support/v4/app/FragmentActivity/mLoadersStarted Z
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentActivity/mRetaining Z
ifne L1
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doStop()V
L0:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchReallyStop()V
return
L1:
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doRetain()V
goto L0
.limit locals 1
.limit stack 2
.end method

.method protected onResume()V
aload 0
invokespecial android/app/Activity/onResume()V
aload 0
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
iconst_1
putfield android/support/v4/app/FragmentActivity/mResumed Z
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
return
.limit locals 1
.limit stack 2
.end method

.method protected onResumeFragments()V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchResume()V
return
.limit locals 1
.limit stack 1
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
aload 0
getfield android/support/v4/app/FragmentActivity/mStopped Z
ifeq L0
aload 0
iconst_1
invokevirtual android/support/v4/app/FragmentActivity/doReallyStop(Z)V
L0:
aload 0
invokevirtual android/support/v4/app/FragmentActivity/onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
astore 4
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/retainNonConfig()Ljava/util/ArrayList;
astore 5
iconst_0
istore 2
iconst_0
istore 1
iload 2
istore 3
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
ifnull L1
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
anewarray android/support/v4/app/LoaderManagerImpl
astore 6
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
invokevirtual java/util/HashMap/values()Ljava/util/Collection;
aload 6
invokeinterface java/util/Collection/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
pop
iload 2
istore 3
aload 6
ifnull L1
iconst_0
istore 2
L2:
iload 1
istore 3
iload 2
aload 6
arraylength
if_icmpge L1
aload 6
iload 2
aaload
astore 7
aload 7
getfield android/support/v4/app/LoaderManagerImpl/mRetaining Z
ifeq L3
iconst_1
istore 1
L4:
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 7
invokevirtual android/support/v4/app/LoaderManagerImpl/doDestroy()V
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
aload 7
getfield android/support/v4/app/LoaderManagerImpl/mWho Ljava/lang/String;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L4
L1:
aload 5
ifnonnull L5
iload 3
ifne L5
aload 4
ifnonnull L5
aconst_null
areturn
L5:
new android/support/v4/app/FragmentActivity$NonConfigurationInstances
dup
invokespecial android/support/v4/app/FragmentActivity$NonConfigurationInstances/<init>()V
astore 6
aload 6
aconst_null
putfield android/support/v4/app/FragmentActivity$NonConfigurationInstances/activity Ljava/lang/Object;
aload 6
aload 4
putfield android/support/v4/app/FragmentActivity$NonConfigurationInstances/custom Ljava/lang/Object;
aload 6
aconst_null
putfield android/support/v4/app/FragmentActivity$NonConfigurationInstances/children Ljava/util/HashMap;
aload 6
aload 5
putfield android/support/v4/app/FragmentActivity$NonConfigurationInstances/fragments Ljava/util/ArrayList;
aload 6
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
putfield android/support/v4/app/FragmentActivity$NonConfigurationInstances/loaders Ljava/util/HashMap;
aload 6
areturn
.limit locals 8
.limit stack 2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/saveAllState()Landroid/os/Parcelable;
astore 2
aload 2
ifnull L0
aload 1
ldc "android:support:fragments"
aload 2
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method protected onStart()V
aload 0
invokespecial android/app/Activity/onStart()V
aload 0
iconst_0
putfield android/support/v4/app/FragmentActivity/mStopped Z
aload 0
iconst_0
putfield android/support/v4/app/FragmentActivity/mReallyStopped Z
aload 0
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield android/support/v4/app/FragmentActivity/mCreated Z
ifne L0
aload 0
iconst_1
putfield android/support/v4/app/FragmentActivity/mCreated Z
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchActivityCreated()V
L0:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/noteStateNotSaved()V
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
aload 0
getfield android/support/v4/app/FragmentActivity/mLoadersStarted Z
ifne L1
aload 0
iconst_1
putfield android/support/v4/app/FragmentActivity/mLoadersStarted Z
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L2
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doStart()V
L3:
aload 0
iconst_1
putfield android/support/v4/app/FragmentActivity/mCheckedForLoaderManager Z
L1:
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchStart()V
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
ifnull L4
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
anewarray android/support/v4/app/LoaderManagerImpl
astore 2
aload 0
getfield android/support/v4/app/FragmentActivity/mAllLoaderManagers Ljava/util/HashMap;
invokevirtual java/util/HashMap/values()Ljava/util/Collection;
aload 2
invokeinterface java/util/Collection/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
pop
aload 2
ifnull L4
iconst_0
istore 1
L5:
iload 1
aload 2
arraylength
if_icmpge L4
aload 2
iload 1
aaload
astore 3
aload 3
invokevirtual android/support/v4/app/LoaderManagerImpl/finishRetain()V
aload 3
invokevirtual android/support/v4/app/LoaderManagerImpl/doReportStart()V
iload 1
iconst_1
iadd
istore 1
goto L5
L2:
aload 0
getfield android/support/v4/app/FragmentActivity/mCheckedForLoaderManager Z
ifne L3
aload 0
aload 0
aconst_null
aload 0
getfield android/support/v4/app/FragmentActivity/mLoadersStarted Z
iconst_0
invokevirtual android/support/v4/app/FragmentActivity/getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
putfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L3
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
getfield android/support/v4/app/LoaderManagerImpl/mStarted Z
ifne L3
aload 0
getfield android/support/v4/app/FragmentActivity/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/doStart()V
goto L3
L4:
return
.limit locals 4
.limit stack 5
.end method

.method protected onStop()V
aload 0
invokespecial android/app/Activity/onStop()V
aload 0
iconst_1
putfield android/support/v4/app/FragmentActivity/mStopped Z
aload 0
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/dispatchStop()V
return
.limit locals 1
.limit stack 2
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
iload 2
iconst_m1
if_icmpeq L0
ldc_w -65536
iload 2
iand
ifeq L0
new java/lang/IllegalArgumentException
dup
ldc "Can only use lower 16 bits for requestCode"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
iload 2
invokespecial android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
iload 3
iconst_m1
if_icmpne L0
aload 0
aload 2
iconst_m1
invokespecial android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
L0:
ldc_w -65536
iload 3
iand
ifeq L1
new java/lang/IllegalArgumentException
dup
ldc "Can only use lower 16 bits for requestCode"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 2
aload 1
getfield android/support/v4/app/Fragment/mIndex I
iconst_1
iadd
bipush 16
ishl
ldc_w 65535
iload 3
iand
iadd
invokespecial android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 4
.limit stack 5
.end method

.method public supportInvalidateOptionsMenu()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
aload 0
invokestatic android/support/v4/app/ActivityCompatHoneycomb/invalidateOptionsMenu(Landroid/app/Activity;)V
return
L0:
aload 0
iconst_1
putfield android/support/v4/app/FragmentActivity/mOptionsMenuInvalidated Z
return
.limit locals 1
.limit stack 2
.end method
