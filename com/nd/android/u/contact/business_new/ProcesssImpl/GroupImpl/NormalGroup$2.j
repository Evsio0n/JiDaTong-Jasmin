.bytecode 50.0
.class synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.enclosing method com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/<init>(J)V
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;

.method <init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDataChanged(IJ)V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getGID()J
lload 2
lcmp
ifeq L0
return
L0:
iload 1
tableswitch 1001
L1
L2
L3
L4
L5
L6
L4
L4
L7
L8
default : L4
L4:
return
L1:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getMemberByDB()Ljava/util/List;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listMember Ljava/util/List;
return
L8:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/access$000(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;)J
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/creatorID J
return
L7:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getGID()J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 4
aload 4
ifnonnull L9
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/name Ljava/lang/String;
return
L9:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/name Ljava/lang/String;
return
L5:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getGID()J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 4
aload 4
ifnonnull L10
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/intro Ljava/lang/String;
return
L10:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getIntroduction()Ljava/lang/String;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/intro Ljava/lang/String;
return
L6:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getGID()J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 4
aload 4
ifnonnull L11
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/announcement Ljava/lang/String;
return
L11:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getNotice()Ljava/lang/String;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/announcement Ljava/lang/String;
return
L2:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/access$100(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;)Ljava/util/List;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
return
L3:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getGID()J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 4
aload 4
ifnonnull L12
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
iconst_1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/nPerm I
return
L12:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/nPerm I
return
.limit locals 5
.limit stack 4
.end method
