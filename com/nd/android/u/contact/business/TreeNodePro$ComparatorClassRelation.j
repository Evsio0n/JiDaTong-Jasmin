.bytecode 50.0
.class synchronized com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;"
.inner class ComparatorClassRelation inner com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation outer com/nd/android/u/contact/business/TreeNodePro

.field 'isActive1' I

.field 'isActive2' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business/TreeNodePro;

.field 'user1' Lcom/product/android/commonInterface/contact/OapUser;

.field 'user2' Lcom/product/android/commonInterface/contact/OapUser;

.method <init>(Lcom/nd/android/u/contact/business/TreeNodePro;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/this$0 Lcom/nd/android/u/contact/business/TreeNodePro;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive1 I
aload 0
iconst_0
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive2 I
return
.limit locals 2
.limit stack 2
.end method

.method public compare(Lcom/product/android/commonInterface/contact/OapUnitRelation;Lcom/product/android/commonInterface/contact/OapUnitRelation;)I
iconst_1
istore 3
aload 0
iconst_0
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive1 I
aload 0
iconst_0
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive2 I
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
aload 0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user1 Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user1 Lcom/product/android/commonInterface/contact/OapUser;
ifnull L1
aload 0
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user1 Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive1 I
L1:
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L2
aload 0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user2 Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user2 Lcom/product/android/commonInterface/contact/OapUser;
ifnull L3
aload 0
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user2 Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive2 I
L3:
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive1 I
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive2 I
if_icmpeq L4
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive1 I
iconst_1
if_icmpne L5
iconst_m1
istore 3
L5:
iload 3
ireturn
L0:
aload 0
iconst_1
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive1 I
goto L1
L2:
aload 0
iconst_1
putfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/isActive2 I
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user1 Lcom/product/android/commonInterface/contact/OapUser;
ifnull L6
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user2 Lcom/product/android/commonInterface/contact/OapUser;
ifnull L6
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user1 Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSpell1()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/user2 Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSpell1()Ljava/lang/String;
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ireturn
L6:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
lsub
l2i
ireturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/product/android/commonInterface/contact/OapUnitRelation
aload 2
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokevirtual com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/compare(Lcom/product/android/commonInterface/contact/OapUnitRelation;Lcom/product/android/commonInterface/contact/OapUnitRelation;)I
ireturn
.limit locals 3
.limit stack 3
.end method
