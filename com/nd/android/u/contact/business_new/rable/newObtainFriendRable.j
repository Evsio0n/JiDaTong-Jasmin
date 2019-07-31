.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/rable/newObtainFriendRable
.super com/common/android/utils/concurrent/NdAbstractTask

.field private 'bManual' Z

.field private 'uid' J

.method public <init>(ZJ)V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/contact/business_new/rable/newObtainFriendRable/uid J
aload 0
iconst_0
putfield com/nd/android/u/contact/business_new/rable/newObtainFriendRable/bManual Z
aload 0
iload 1
putfield com/nd/android/u/contact/business_new/rable/newObtainFriendRable/bManual Z
aload 0
lload 2
putfield com/nd/android/u/contact/business_new/rable/newObtainFriendRable/uid J
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_3
invokevirtual com/product/android/business/bean/SysParam/setObtainFriend(I)V
return
.limit locals 4
.limit stack 3
.end method

.method public run()V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainFriend()I
iconst_1
if_icmpne L0
return
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 1
lload 1
lconst_0
lcmp
ifgt L1
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainFriend(I)V
return
L1:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
lload 1
iconst_1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/refresh(JZ)Z 3
ifne L2
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainFriend(I)V
return
L2:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_1
invokevirtual com/product/android/business/bean/SysParam/setObtainFriend(I)V
return
.limit locals 3
.limit stack 4
.end method
