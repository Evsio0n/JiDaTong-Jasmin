.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/activity/BackpackBaseActivity
.super android/support/v4/app/FragmentActivity

.field private static final 'BASE_ITEM_PROPERTY_LIST' Ljava/lang/String; = "base_item_property_list"

.field private static final 'MY_ITEM_LIST' Ljava/lang/String; = "my_item_list"

.field private static final 'RECEIVE_ITEM_LIST' Ljava/lang/String; = "receive_item_list"

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 1
ifnull L0
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/clearData()V
aload 1
ldc "base_item_property_list"
invokevirtual android/os/Bundle/getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/os/Parcelable
checkcast com/nd/android/backpacksystem/data/BaseItemProperty
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 2
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/addItemProperty(Ljava/util/List;)V
aload 1
ldc "my_item_list"
invokevirtual android/os/Bundle/getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/os/Parcelable
checkcast com/nd/android/backpacksystem/data/MyItems
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L4:
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 2
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/appendMyItems(Ljava/util/List;)V
aload 1
ldc "receive_item_list"
invokevirtual android/os/Bundle/getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L5:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/os/Parcelable
checkcast com/nd/android/backpacksystem/data/ReceiveItems
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L5
L6:
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 1
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/appendReceiveItems(Ljava/util/List;)V
L0:
return
.limit locals 4
.limit stack 2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "my_item_list"
new java/util/ArrayList
dup
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getMyItemList()Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokevirtual android/os/Bundle/putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 1
ldc "base_item_property_list"
new java/util/ArrayList
dup
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getBaseItemPropertyList()Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokevirtual android/os/Bundle/putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 1
ldc "receive_item_list"
new java/util/ArrayList
dup
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getReceiveItemList()Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokevirtual android/os/Bundle/putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
return
.limit locals 2
.limit stack 5
.end method
