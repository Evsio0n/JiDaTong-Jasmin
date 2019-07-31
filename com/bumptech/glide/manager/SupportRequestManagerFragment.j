.bytecode 50.0
.class public synchronized com/bumptech/glide/manager/SupportRequestManagerFragment
.super android/support/v4/app/Fragment
.inner class static synthetic inner com/bumptech/glide/manager/SupportRequestManagerFragment$1
.inner class private SupportFragmentRequestManagerTreeNode inner com/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode outer com/bumptech/glide/manager/SupportRequestManagerFragment

.field private final 'childRequestManagerFragments' Ljava/util/HashSet; signature "Ljava/util/HashSet<Lcom/bumptech/glide/manager/SupportRequestManagerFragment;>;"

.field private final 'lifecycle' Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private 'requestManager' Lcom/bumptech/glide/RequestManager;

.field private final 'requestManagerTreeNode' Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private 'rootRequestManagerFragment' Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

.method public <init>()V
aload 0
new com/bumptech/glide/manager/ActivityFragmentLifecycle
dup
invokespecial com/bumptech/glide/manager/ActivityFragmentLifecycle/<init>()V
invokespecial com/bumptech/glide/manager/SupportRequestManagerFragment/<init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ValidFragment" 
.end annotation
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
new com/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode
dup
aload 0
aconst_null
invokespecial com/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode/<init>(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;)V
putfield com/bumptech/glide/manager/SupportRequestManagerFragment/requestManagerTreeNode Lcom/bumptech/glide/manager/RequestManagerTreeNode;
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/bumptech/glide/manager/SupportRequestManagerFragment/childRequestManagerFragments Ljava/util/HashSet;
aload 0
aload 1
putfield com/bumptech/glide/manager/SupportRequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
return
.limit locals 2
.limit stack 5
.end method

.method private addChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/childRequestManagerFragments Ljava/util/HashSet;
aload 1
invokevirtual java/util/HashSet/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method private isDescendant(Landroid/support/v4/app/Fragment;)Z
aload 0
invokevirtual com/bumptech/glide/manager/SupportRequestManagerFragment/getParentFragment()Landroid/support/v4/app/Fragment;
astore 2
L0:
aload 1
invokevirtual android/support/v4/app/Fragment/getParentFragment()Landroid/support/v4/app/Fragment;
ifnull L1
aload 1
invokevirtual android/support/v4/app/Fragment/getParentFragment()Landroid/support/v4/app/Fragment;
aload 2
if_acmpne L2
iconst_1
ireturn
L2:
aload 1
invokevirtual android/support/v4/app/Fragment/getParentFragment()Landroid/support/v4/app/Fragment;
astore 1
goto L0
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/childRequestManagerFragments Ljava/util/HashSet;
aload 1
invokevirtual java/util/HashSet/remove(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getDescendantRequestManagerFragments()Ljava/util/Set;
.signature "()Ljava/util/Set<Lcom/bumptech/glide/manager/SupportRequestManagerFragment;>;"
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
ifnonnull L0
invokestatic java/util/Collections/emptySet()Ljava/util/Set;
areturn
L0:
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
aload 0
if_acmpne L1
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/childRequestManagerFragments Ljava/util/HashSet;
invokestatic java/util/Collections/unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
areturn
L1:
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 1
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
invokevirtual com/bumptech/glide/manager/SupportRequestManagerFragment/getDescendantRequestManagerFragments()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/manager/SupportRequestManagerFragment
astore 3
aload 0
aload 3
invokevirtual com/bumptech/glide/manager/SupportRequestManagerFragment/getParentFragment()Landroid/support/v4/app/Fragment;
invokespecial com/bumptech/glide/manager/SupportRequestManagerFragment/isDescendant(Landroid/support/v4/app/Fragment;)Z
ifeq L2
aload 1
aload 3
invokevirtual java/util/HashSet/add(Ljava/lang/Object;)Z
pop
goto L2
L3:
aload 1
invokestatic java/util/Collections/unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
areturn
.limit locals 4
.limit stack 2
.end method

.method getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/requestManagerTreeNode Lcom/bumptech/glide/manager/RequestManagerTreeNode;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onAttach(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onAttach(Landroid/app/Activity;)V
aload 0
invokestatic com/bumptech/glide/manager/RequestManagerRetriever/get()Lcom/bumptech/glide/manager/RequestManagerRetriever;
aload 0
invokevirtual com/bumptech/glide/manager/SupportRequestManagerFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual com/bumptech/glide/manager/RequestManagerRetriever/getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
putfield com/bumptech/glide/manager/SupportRequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
aload 0
if_acmpeq L0
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
aload 0
invokespecial com/bumptech/glide/manager/SupportRequestManagerFragment/addChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public onDestroy()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
invokevirtual com/bumptech/glide/manager/ActivityFragmentLifecycle/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onDetach()V
aload 0
invokespecial android/support/v4/app/Fragment/onDetach()V
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
ifnull L0
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
aload 0
invokespecial com/bumptech/glide/manager/SupportRequestManagerFragment/removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
aload 0
aconst_null
putfield com/bumptech/glide/manager/SupportRequestManagerFragment/rootRequestManagerFragment Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onLowMemory()V
aload 0
invokespecial android/support/v4/app/Fragment/onLowMemory()V
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
ifnull L0
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
invokevirtual com/bumptech/glide/RequestManager/onLowMemory()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onStart()V
aload 0
invokespecial android/support/v4/app/Fragment/onStart()V
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
invokevirtual com/bumptech/glide/manager/ActivityFragmentLifecycle/onStart()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStop()V
aload 0
invokespecial android/support/v4/app/Fragment/onStop()V
aload 0
getfield com/bumptech/glide/manager/SupportRequestManagerFragment/lifecycle Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
invokevirtual com/bumptech/glide/manager/ActivityFragmentLifecycle/onStop()V
return
.limit locals 1
.limit stack 1
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
aload 0
aload 1
putfield com/bumptech/glide/manager/SupportRequestManagerFragment/requestManager Lcom/bumptech/glide/RequestManager;
return
.limit locals 2
.limit stack 2
.end method
