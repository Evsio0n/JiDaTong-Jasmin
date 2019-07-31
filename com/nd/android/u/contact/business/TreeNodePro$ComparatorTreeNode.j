.bytecode 50.0
.class synchronized com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Lcom/nd/android/u/contact/dataStructure/Node;>;"
.inner class ComparatorTreeNode inner com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode outer com/nd/android/u/contact/business/TreeNodePro

.field 'isActive1' I

.field 'isActive2' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business/TreeNodePro;

.field 'user1' Lcom/product/android/commonInterface/contact/OapUser;

.field 'user2' Lcom/product/android/commonInterface/contact/OapUser;

.method <init>(Lcom/nd/android/u/contact/business/TreeNodePro;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/this$0 Lcom/nd/android/u/contact/business/TreeNodePro;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive1 I
aload 0
iconst_0
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive2 I
return
.limit locals 2
.limit stack 2
.end method

.method public compare(Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/Node;)I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
if_icmpne L0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
iconst_2
if_icmpne L0
aload 0
iconst_0
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive1 I
aload 0
iconst_0
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive2 I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L1
aload 0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user1 Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user1 Lcom/product/android/commonInterface/contact/OapUser;
ifnull L2
aload 0
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user1 Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive1 I
L2:
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L3
aload 0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user2 Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user2 Lcom/product/android/commonInterface/contact/OapUser;
ifnull L4
aload 0
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user2 Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive2 I
L4:
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive1 I
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive2 I
if_icmpeq L5
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive1 I
iconst_1
if_icmpne L6
L0:
iconst_1
ireturn
L1:
aload 0
iconst_1
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive1 I
goto L2
L3:
aload 0
iconst_1
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/isActive2 I
goto L4
L6:
iconst_m1
ireturn
L5:
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user1 Lcom/product/android/commonInterface/contact/OapUser;
ifnull L7
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user2 Lcom/product/android/commonInterface/contact/OapUser;
ifnull L7
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user1 Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSpell1()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/user2 Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSpell1()Ljava/lang/String;
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ireturn
L7:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
lsub
l2i
ireturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/nd/android/u/contact/dataStructure/Node
aload 2
checkcast com/nd/android/u/contact/dataStructure/Node
invokevirtual com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/compare(Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/Node;)I
ireturn
.limit locals 3
.limit stack 3
.end method
