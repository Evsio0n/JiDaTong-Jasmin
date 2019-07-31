.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;>;"
.inner class private GetPersonList inner com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList outer com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;

.method private <init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList/<init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList/doInBackground([Ljava/lang/Void;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/List;
.signature "([Ljava/lang/Void;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
invokestatic com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/access$300(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)I
tableswitch 1
L0
L1
L2
default : L3
L3:
aload 1
ifnull L4
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L5
L4:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L0:
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getFriendsList()Ljava/util/ArrayList;
areturn
L1:
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getLaytelyUserIdList()Ljava/util/ArrayList;
astore 1
goto L3
L2:
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getInterfaceForDifference()Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;
invokeinterface com/nd/android/backpacksystem/interfaces/InterfaceForDifference/getDepartmentList()Ljava/util/List; 0
areturn
L5:
aload 1
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getUserSimpleList(Ljava/util/List;)Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
invokestatic com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/access$100(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)Lcom/nd/android/backpacksystem/adapter/SelectPersonListAdapter;
aload 1
invokevirtual com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/setData(Ljava/util/List;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$GetPersonList/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
invokestatic com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/access$100(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)Lcom/nd/android/backpacksystem/adapter/SelectPersonListAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
return
.limit locals 1
.limit stack 0
.end method
