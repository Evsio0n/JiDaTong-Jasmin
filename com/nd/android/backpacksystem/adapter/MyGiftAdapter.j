.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/adapter/MyGiftAdapter
.super android/widget/BaseAdapter
.inner class static final inner com/nd/android/backpacksystem/adapter/MyGiftAdapter$1

.field private static final 'COLUMN_NUM' I = 3


.field private static final 'mBgList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Integer;>;"

.field private 'mActivity' Landroid/app/Activity;

.field private 'mMyGiftInfoList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/backpacksystem/data/MyItems;>;"

.method static <clinit>()V
new com/nd/android/backpacksystem/adapter/MyGiftAdapter$1
dup
invokespecial com/nd/android/backpacksystem/adapter/MyGiftAdapter$1/<init>()V
putstatic com/nd/android/backpacksystem/adapter/MyGiftAdapter/mBgList Ljava/util/ArrayList;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mActivity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_3
iadd
iconst_1
isub
iconst_3
idiv
iconst_3
imul
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
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

.method public getRealCount()I
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
checkcast com/nd/android/backpacksystem/view/MyGiftListItemView
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new com/nd/android/backpacksystem/view/MyGiftListItemView
dup
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mActivity Landroid/app/Activity;
invokespecial com/nd/android/backpacksystem/view/MyGiftListItemView/<init>(Landroid/app/Activity;)V
astore 2
L0:
iload 1
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/backpacksystem/data/MyItems
astore 3
aload 2
getstatic com/nd/android/backpacksystem/adapter/MyGiftAdapter/mBgList Ljava/util/ArrayList;
iload 1
iconst_3
irem
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aload 3
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/setData(ILcom/nd/android/backpacksystem/data/MyItems;)V
aload 2
areturn
L1:
aload 2
getstatic com/nd/android/backpacksystem/adapter/MyGiftAdapter/mBgList Ljava/util/ArrayList;
iload 1
iconst_3
irem
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/emptyItem(I)V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public setData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/backpacksystem/data/MyItems;>;)V"
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
ifnonnull L0
aload 0
aload 1
putfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
return
L0:
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/backpacksystem/adapter/MyGiftAdapter/mMyGiftInfoList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method
