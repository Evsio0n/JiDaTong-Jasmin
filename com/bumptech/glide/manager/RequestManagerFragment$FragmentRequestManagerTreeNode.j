.bytecode 50.0
.class synchronized com/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode
.super java/lang/Object
.implements com/bumptech/glide/manager/RequestManagerTreeNode
.inner class private FragmentRequestManagerTreeNode inner com/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode outer com/bumptech/glide/manager/RequestManagerFragment

.field final synthetic 'this$0' Lcom/bumptech/glide/manager/RequestManagerFragment;

.method private <init>(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
aload 0
aload 1
putfield com/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode/this$0 Lcom/bumptech/glide/manager/RequestManagerFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/bumptech/glide/manager/RequestManagerFragment;Lcom/bumptech/glide/manager/RequestManagerFragment$1;)V
aload 0
aload 1
invokespecial com/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode/<init>(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
return
.limit locals 3
.limit stack 2
.end method

.method public getDescendants()Ljava/util/Set;
.signature "()Ljava/util/Set<Lcom/bumptech/glide/RequestManager;>;"
aload 0
getfield com/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode/this$0 Lcom/bumptech/glide/manager/RequestManagerFragment;
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getDescendantRequestManagerFragments()Ljava/util/Set;
astore 2
new java/util/HashSet
dup
aload 2
invokeinterface java/util/Set/size()I 0
invokespecial java/util/HashSet/<init>(I)V
astore 1
aload 2
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/manager/RequestManagerFragment
astore 3
aload 3
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getRequestManager()Lcom/bumptech/glide/RequestManager;
ifnull L0
aload 1
aload 3
invokevirtual com/bumptech/glide/manager/RequestManagerFragment/getRequestManager()Lcom/bumptech/glide/RequestManager;
invokevirtual java/util/HashSet/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 1
areturn
.limit locals 4
.limit stack 3
.end method
