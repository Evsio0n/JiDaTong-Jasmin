.bytecode 50.0
.class public synchronized com/bumptech/glide/manager/RequestManagerRetriever
.super java/lang/Object
.implements android/os/Handler$Callback

.field static final 'FRAGMENT_TAG' Ljava/lang/String; = "com.bumptech.glide.manager"

.field private static final 'ID_REMOVE_FRAGMENT_MANAGER' I = 1


.field private static final 'ID_REMOVE_SUPPORT_FRAGMENT_MANAGER' I = 2


.field private static final 'INSTANCE' Lcom/bumptech/glide/manager/RequestManagerRetriever;

.field private static final 'TAG' Ljava/lang/String; = "RMRetriever"

.field private volatile 'applicationManager' Lcom/bumptech/glide/RequestManager;

.field private final 'handler' Landroid/os/Handler;

.field final 'pendingRequestManagerFragments' Ljava/util/Map; signature "Ljava/util/Map<Landroid/app/FragmentManager;Lcom/bumptech/glide/manager/RequestManagerFragment;>;"

.field final 'pendingSupportRequestManagerFragments' Ljava/util/Map; signature "Ljava/util/Map<Landroid/support/v4/app/FragmentManager;Lcom/bumptech/glide/manager/SupportRequestManagerFragment;>;"

.method static <clinit>()V
new com/bumptech/glide/manager/RequestManagerRetriever
dup
invokespecial com/bumptech/glide/manager/RequestManagerRetriever/<init>()V
putstatic com/bumptech/glide/manager/RequestManagerRetriever/INSTANCE Lcom/bumptech/glide/manager/RequestManagerRetriever;
return
.limit locals 0
.limit stack 2
.end method

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/bumptech/glide/manager/RequestManagerRetriever/pendingRequestManagerFragments Ljava/util/Map;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/bumptech/glide/manager/RequestManagerRetriever/pendingSupportRequestManagerFragments Ljava/util/Map;
aload 0
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
aload 0
invokespecial android/os/Handler/<init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
putfield com/bumptech/glide/manager/RequestManagerRetriever/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 5
.end method

.method private static assertNotDestroyed(Landroid/app/Activity;)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 17
.end annotation
getstatic android/os/Build$VERSION/SDK_INT I
bipush 17
if_icmplt L0
aload 0
invokevirtual android/app/Activity/isDestroyed()Z
ifeq L0
new java/lang/IllegalArgumentException
dup
ldc "You cannot start a load for a destroyed activity"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public static get()Lcom/bumptech/glide/manager/RequestManagerRetriever;
getstatic com/bumptech/glide/manager/RequestManagerRetriever/INSTANCE Lcom/bumptech/glide/manager/RequestManagerRetriever;
areturn
.limit locals 0
.limit stack 1
.end method

.method private getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/applicationManager Lcom/bumptech/glide/RequestManager;
ifnonnull L3
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/applicationManager Lcom/bumptech/glide/RequestManager;
ifnonnull L1
aload 0
new com/bumptech/glide/RequestManager
dup
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
new com/bumptech/glide/manager/ApplicationLifecycle
dup
invokespecial com/bumptech/glide/manager/ApplicationLifecycle/<init>()V
new com/bumptech/glide/manager/EmptyRequestManagerTreeNode
dup
invokespecial com/bumptech/glide/manager/EmptyRequestManagerTreeNode/<init>()V
invokespecial com/bumptech/glide/RequestManager/<init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V
putfield com/bumptech/glide/manager/RequestManagerRetriever/applicationManager Lcom/bumptech/glide/RequestManager;
L1:
aload 0
monitorexit
L3:
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/applicationManager Lcom/bumptech/glide/RequestManager;
areturn
L2:
astore 1
L4:
aload 0
monitorexit
L5:
aload 1
athrow
.limit locals 2
.limit stack 7
.end method

.method fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
aload 0
aload 2
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/getRequestManagerFragment(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;
astore 4
aload 4
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getRequestManager()Lcom/bumptech/glide/RequestManager;
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new com/bumptech/glide/RequestManager
dup
aload 1
aload 4
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
aload 4
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
invokespecial com/bumptech/glide/RequestManager/<init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V
astore 2
aload 4
aload 2
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/setRequestManager(Lcom/bumptech/glide/RequestManager;)V
L0:
aload 2
areturn
.limit locals 5
.limit stack 5
.end method

.method public get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
invokestatic com/bumptech/glide/util/Util/isOnBackgroundThread()Z
ifne L0
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmpge L1
L0:
aload 0
aload 1
invokevirtual android/app/Activity/getApplicationContext()Landroid/content/Context;
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
areturn
L1:
aload 1
invokestatic com/bumptech/glide/manager/RequestManagerRetriever/assertNotDestroyed(Landroid/app/Activity;)V
aload 0
aload 1
aload 1
invokevirtual android/app/Activity/getFragmentManager()Landroid/app/FragmentManager;
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 2
.limit stack 3
.end method

.method public get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
.annotation invisible Landroid/annotation/TargetApi;
value I = 17
.end annotation
aload 1
invokevirtual android/app/Fragment/getActivity()Landroid/app/Activity;
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "You cannot start a load on a fragment before it is attached"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
invokestatic com/bumptech/glide/util/Util/isOnBackgroundThread()Z
ifne L1
getstatic android/os/Build$VERSION/SDK_INT I
bipush 17
if_icmpge L2
L1:
aload 0
aload 1
invokevirtual android/app/Fragment/getActivity()Landroid/app/Activity;
invokevirtual android/app/Activity/getApplicationContext()Landroid/content/Context;
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
areturn
L2:
aload 1
invokevirtual android/app/Fragment/getChildFragmentManager()Landroid/app/FragmentManager;
astore 2
aload 0
aload 1
invokevirtual android/app/Fragment/getActivity()Landroid/app/Activity;
aload 2
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 3
.limit stack 3
.end method

.method public get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "You cannot start a load on a null Context"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
invokestatic com/bumptech/glide/util/Util/isOnMainThread()Z
ifeq L1
aload 1
instanceof android/app/Application
ifne L1
aload 1
instanceof android/support/v4/app/FragmentActivity
ifeq L2
aload 0
aload 1
checkcast android/support/v4/app/FragmentActivity
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
areturn
L2:
aload 1
instanceof android/app/Activity
ifeq L3
aload 0
aload 1
checkcast android/app/Activity
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
areturn
L3:
aload 1
instanceof android/content/ContextWrapper
ifeq L1
aload 0
aload 1
checkcast android/content/ContextWrapper
invokevirtual android/content/ContextWrapper/getBaseContext()Landroid/content/Context;
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
areturn
L1:
aload 0
aload 1
invokespecial com/bumptech/glide/manager/RequestManagerRetriever/getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 2
.limit stack 3
.end method

.method public get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
aload 1
invokevirtual android/support/v4/app/Fragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "You cannot start a load on a fragment before it is attached"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
invokestatic com/bumptech/glide/util/Util/isOnBackgroundThread()Z
ifeq L1
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getApplicationContext()Landroid/content/Context;
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
areturn
L1:
aload 1
invokevirtual android/support/v4/app/Fragment/getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
astore 2
aload 0
aload 1
invokevirtual android/support/v4/app/Fragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 2
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/supportFragmentGet(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 3
.limit stack 3
.end method

.method public get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/util/Util/isOnBackgroundThread()Z
ifeq L0
aload 0
aload 1
invokevirtual android/support/v4/app/FragmentActivity/getApplicationContext()Landroid/content/Context;
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
areturn
L0:
aload 1
invokestatic com/bumptech/glide/manager/RequestManagerRetriever/assertNotDestroyed(Landroid/app/Activity;)V
aload 0
aload 1
aload 1
invokevirtual android/support/v4/app/FragmentActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/supportFragmentGet(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 2
.limit stack 3
.end method

.method getRequestManagerFragment(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;
.annotation invisible Landroid/annotation/TargetApi;
value I = 17
.end annotation
aload 1
ldc "com.bumptech.glide.manager"
invokevirtual android/app/FragmentManager/findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
checkcast com/bumptech/glide/manager/RequestManagerFragment
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/pendingRequestManagerFragments Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/manager/RequestManagerFragment
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new com/bumptech/glide/manager/RequestManagerFragment
dup
invokespecial com/bumptech/glide/manager/RequestManagerFragment/<init>()V
astore 2
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/pendingRequestManagerFragments Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
invokevirtual android/app/FragmentManager/beginTransaction()Landroid/app/FragmentTransaction;
aload 2
ldc "com.bumptech.glide.manager"
invokevirtual android/app/FragmentTransaction/add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
invokevirtual android/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/handler Landroid/os/Handler;
iconst_1
aload 1
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
L0:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
aload 1
ldc "com.bumptech.glide.manager"
invokevirtual android/support/v4/app/FragmentManager/findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
checkcast com/bumptech/glide/manager/SupportRequestManagerFragment
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/pendingSupportRequestManagerFragments Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/manager/SupportRequestManagerFragment
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new com/bumptech/glide/manager/SupportRequestManagerFragment
dup
invokespecial com/bumptech/glide/manager/SupportRequestManagerFragment/<init>()V
astore 2
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/pendingSupportRequestManagerFragments Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
aload 2
ldc "com.bumptech.glide.manager"
invokevirtual android/support/v4/app/FragmentTransaction/add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/handler Landroid/os/Handler;
iconst_2
aload 1
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
L0:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public handleMessage(Landroid/os/Message;)Z
iconst_1
istore 2
aconst_null
astore 3
aconst_null
astore 4
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L1
default : L2
L2:
iconst_0
istore 2
aload 4
astore 1
L3:
iload 2
ifeq L4
aload 3
ifnonnull L4
ldc "RMRetriever"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L4
ldc "RMRetriever"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to remove expected request manager fragment, manager: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
iload 2
ireturn
L0:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast android/app/FragmentManager
astore 3
aload 3
astore 1
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/pendingRequestManagerFragments Ljava/util/Map;
aload 3
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
astore 3
goto L3
L1:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast android/support/v4/app/FragmentManager
astore 3
aload 3
astore 1
aload 0
getfield com/bumptech/glide/manager/RequestManagerRetriever/pendingSupportRequestManagerFragments Ljava/util/Map;
aload 3
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
astore 3
goto L3
.limit locals 5
.limit stack 3
.end method

.method supportFragmentGet(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
aload 0
aload 2
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
astore 4
aload 4
invokevirtual com/bumptech/glide/manager/SupportRequestManagerFragment/getRequestManager()Lcom/bumptech/glide/RequestManager;
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new com/bumptech/glide/RequestManager
dup
aload 1
aload 4
invokevirtual com/bumptech/glide/manager/SupportRequestManagerFragment/getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
aload 4
invokevirtual com/bumptech/glide/manager/SupportRequestManagerFragment/getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
invokespecial com/bumptech/glide/RequestManager/<init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V
astore 2
aload 4
aload 2
invokevirtual com/bumptech/glide/manager/SupportRequestManagerFragment/setRequestManager(Lcom/bumptech/glide/RequestManager;)V
L0:
aload 2
areturn
.limit locals 5
.limit stack 5
.end method
