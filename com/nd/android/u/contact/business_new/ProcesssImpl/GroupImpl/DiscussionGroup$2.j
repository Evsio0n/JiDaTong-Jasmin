.bytecode 50.0
.class synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.enclosing method com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/<init>(J)V
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;

.method <init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDataChanged(IJ)V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getGID()J
lload 2
lcmp
ifeq L0
return
L0:
iload 1
lookupswitch
1001 : L1
1006 : L2
default : L3
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getMemberByDB()Ljava/util/List;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/listMember Ljava/util/List;
return
L2:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getGID()J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnonnull L4
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/announcement Ljava/lang/String;
return
L4:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getNotice()Ljava/lang/String;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/announcement Ljava/lang/String;
return
.limit locals 4
.limit stack 4
.end method
