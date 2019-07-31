.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$3
.super java/lang/Object
.implements com/product/android/commonInterface/weibo/ISendFlowerDialogListener
.enclosing method com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter
.inner class inner com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$3

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;

.method <init>(Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$3/this$0 Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCancel(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onSuccessNum(Landroid/content/Context;ILjava/util/List;)V
.signature "(Landroid/content/Context;ILjava/util/List<Lcom/product/android/commonInterface/backpack/BackPackItem;>;)V"
aload 3
astore 1
aload 3
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L0:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setFlowerBackPackList(Ljava/util/List;)V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFlowerBackPackMap()Ljava/util/Map;
astore 1
aload 1
ifnull L1
aload 1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/backpack/BackPackItem
getfield com/product/android/commonInterface/backpack/BackPackItem/amount I
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
L1:
return
.limit locals 4
.limit stack 4
.end method
