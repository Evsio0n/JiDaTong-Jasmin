.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/adapter/SelectPersonListAdapter
.super android/widget/BaseAdapter

.field private 'mActivity' Landroid/app/Activity;

.field private 'mUserList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/mActivity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/mUserList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/mUserList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/mUserList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
checkcast com/nd/android/backpacksystem/view/SelectPersonListItemView
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new com/nd/android/backpacksystem/view/SelectPersonListItemView
dup
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/mActivity Landroid/app/Activity;
invokespecial com/nd/android/backpacksystem/view/SelectPersonListItemView/<init>(Landroid/app/Activity;)V
astore 2
L0:
aload 2
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/mUserList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
invokevirtual com/nd/android/backpacksystem/view/SelectPersonListItemView/setData(Lcom/product/android/commonInterface/contact/OapUserSimple;)V
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public setData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
aload 0
aload 1
putfield com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/mUserList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
