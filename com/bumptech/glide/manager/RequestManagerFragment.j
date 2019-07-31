.bytecode 50.0
.class public synchronized com/bumptech/glide/manager/RequestManagerFragment
.super android/app/Fragment
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
.inner class static synthetic inner com/bumptech/glide/manager/RequestManagerFragment$1
.inner class private FragmentRequestManagerTreeNode inner com/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode outer com/bumptech/glide/manager/RequestManagerFragment

.field private final 'childRequestManagerFragments' Ljava/util/HashSet; signature "Ljava/util/HashSet<Lcom/bumptech/glide/manager/RequestManagerFragment;>;"

.field private final 'lifecycle' Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private 'requestManager' Lcom/bumptech/glide/RequestManager;

.field private final 'requestManagerTreeNode' Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private 'rootRequestManagerFragment' Lcom/bumptech/glide/manager/RequestManagerFragment;

.method public <init>()V
aload 0
new com/bumptech/glide/manager/ActivityFragmentLifecycle
dup
invokespecial com/bumptech/glide/manager/ActivityFragmentLifecycle/<init>()V
invokespecial com/bumptech/glide/manager/RequestManagerFragment/<init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
return
.limit locals 1
.limit stack 3
.end method

.method <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ValidFragment" 
.end annotation
aload 0
invokespecial android/app/Fragment/<init>()V
aload 0
new com/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode
dup
aload 0
aconst_null
invokespecial com/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode/<init>(Lcom/bumptech/glide/manager/RequestManagerFragment;Lcom/bumptech/glide/manager/RequestManagerFragment$1;)V
putfield com/bumptech/glide/manager/RequestManagerFragment/requestManagerTreeNode Lcom/bumptech/glide/manager/RequestManagerTreeNode;
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/bumptech/glide/manager/RequestManagerFragment/childRequestManagerFragments Ljava/util/HashSet;
aload 0
aload 1
putfield com/bumptech/glide/manager/RequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
return
.limit locals 2
.limit stack 5
.end method

.method private addChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/childRequestManagerFragments Ljava/util/HashSet;
aload 1
invokevirtual java/util/HashSet/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method private isDescendant(Landroid/app/Fragment;)Z
.annotation invisible Landroid/annotation/TargetApi;
value I = 17
.end annotation
aload 0
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getParentFragment()Landroid/app/Fragment;
astore 2
L0:
aload 1
invokevirtual android/app/Fragment/getParentFragment()Landroid/app/Fragment;
ifnull L1
aload 1
invokevirtual android/app/Fragment/getParentFragment()Landroid/app/Fragment;
aload 2
if_acmpne L2
iconst_1
ireturn
L2:
aload 1
invokevirtual android/app/Fragment/getParentFragment()Landroid/app/Fragment;
astore 1
goto L0
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/childRequestManagerFragments Ljava/util/HashSet;
aload 1
invokevirtual java/util/HashSet/remove(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getDescendantRequestManagerFragments()Ljava/util/Set;
.signature "()Ljava/util/Set<Lcom/bumptech/glide/manager/RequestManagerFragment;>;"
.annotation invisible Landroid/annotation/TargetApi;
value I = 17
.end annotation
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/RequestManagerFragment;
aload 0
if_acmpne L0
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/childRequestManagerFragments Ljava/util/HashSet;
invokestatic java/util/Collections/unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
areturn
L0:
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/RequestManagerFragment;
ifnull L1
getstatic android/os/Build$VERSION/SDK_INT I
bipush 17
if_icmpge L2
L1:
invokestatic java/util/Collections/emptySet()Ljava/util/Set;
areturn
L2:
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 1
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/RequestManagerFragment;
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getDescendantRequestManagerFragments()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/manager/RequestManagerFragment
astore 3
aload 0
aload 3
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getParentFragment()Landroid/app/Fragment;
invokespecial com/bumptech/glide/manager/RequestManagerFragment/isDescendant(Landroid/app/Fragment;)Z
ifeq L3
aload 1
aload 3
invokevirtual java/util/HashSet/add(Ljava/lang/Object;)Z
pop
goto L3
L4:
aload 1
invokestatic java/util/Collections/unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
areturn
.limit locals 4
.limit stack 2
.end method

.method getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/requestManagerTreeNode Lcom/bumptech/glide/manager/RequestManagerTreeNode;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onAttach(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial android/app/Fragment/onAttach(Landroid/app/Activity;)V
aload 0
invokestatic com/bumptech/glide/manager/RequestManagerRetriever/get()Lcom/bumptech/glide/manager/RequestManagerRetriever;
aload 0
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getActivity()Landroid/app/Activity;
invokevirtual android/app/Activity/getFragmentManager()Landroid/app/FragmentManager;
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/getRequestManagerFragment(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;
putfield com/bumptech/glide/manager/RequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/RequestManagerFragment;
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/RequestManagerFragment;
aload 0
if_acmpeq L0
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/RequestManagerFragment;
aload 0
invokespecial com/bumptech/glide/manager/RequestManagerFragment/addChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public onDestroy()V
aload 0
invokespecial android/app/Fragment/onDestroy()V
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
invokevirtual com/bumptech/glide/manager/ActivityFragmentLifecycle/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onDetach()V
aload 0
invokespecial android/app/Fragment/onDetach()V
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/RequestManagerFragment;
ifnull L0
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/RequestManagerFragment;
aload 0
invokespecial com/bumptech/glide/manager/RequestManagerFragment/removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
aload 0
aconst_null
putfield com/bumptech/glide/manager/RequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/RequestManagerFragment;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onLowMemory()V
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
ifnull L0
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
invokevirtual com/bumptech/glide/RequestManager/onLowMemory()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onStart()V
aload 0
invokespecial android/app/Fragment/onStart()V
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
invokevirtual com/bumptech/glide/manager/ActivityFragmentLifecycle/onStart()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStop()V
aload 0
invokespecial android/app/Fragment/onStop()V
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
invokevirtual com/bumptech/glide/manager/ActivityFragmentLifecycle/onStop()V
return
.limit locals 1
.limit stack 1
.end method

.method public onTrimMemory(I)V
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
ifnull L0
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
iload 1
invokevirtual com/bumptech/glide/RequestManager/onTrimMemory(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
aload 0
aload 1
putfield com/bumptech/glide/manager/RequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
return
.limit locals 2
.limit stack 2
.end method
