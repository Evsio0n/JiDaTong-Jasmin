.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.catch org/json/JSONException from L0 to L1 using L2
iload 1
tableswitch 112001
L3
L4
L5
L6
L7
default : L8
L8:
sipush -1001
istore 1
L9:
iload 1
ireturn
L3:
aload 2
ifnull L10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L11
L10:
iconst_m1
ireturn
L11:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
ldc "fragment_type"
sipush 260
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 5
aload 2
ldc com/nd/android/backpacksystem/activity/BackpackMainActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L9
L4:
aload 2
ifnull L12
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ifnonnull L13
L12:
iconst_m1
ireturn
L13:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
astore 5
aconst_null
astore 2
L0:
new org/json/JSONObject
dup
aload 5
ldc "\\\\"
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
L1:
aload 5
astore 2
L14:
aload 2
ifnull L15
aload 2
invokestatic com/nd/android/backpacksystem/data/ReceiveItems/Json2ReceiveItem(Lorg/json/JSONObject;)Lcom/nd/android/backpacksystem/data/ReceiveItems;
astore 5
aload 5
invokevirtual com/nd/android/backpacksystem/data/ReceiveItems/isObjectValid()Z
ifeq L15
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 5
getfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/hasItemProperty(J)Z
ifeq L15
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 5
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/appendReceiveItem(Lcom/nd/android/backpacksystem/data/ReceiveItems;)V
aload 2
invokestatic com/nd/android/backpacksystem/data/MyItems/Json2MyItem(Lorg/json/JSONObject;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L16:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L17
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/data/MyItems
astore 5
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 5
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemId()J
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getMyItem(J)Lcom/nd/android/backpacksystem/data/MyItems;
astore 6
aload 6
ifnonnull L18
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 6
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 6
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/appendMyItems(Ljava/util/List;)V
goto L16
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L14
L18:
aload 6
aload 5
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
invokevirtual com/nd/android/backpacksystem/data/MyItems/setAmount(I)V
goto L16
L17:
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "receive_new_gift"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
L15:
iconst_0
istore 1
goto L9
L5:
aload 2
ifnull L19
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L19
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L20
L19:
iconst_m1
ireturn
L20:
invokestatic com/nd/android/backpacksystem/fragment/GiftBoxFragment/clearUnreadGiftMsg()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
ldc "fragment_type"
sipush 258
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 5
aload 2
ldc com/nd/android/backpacksystem/activity/BackpackMainActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L9
L6:
aload 2
ifnull L21
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L21
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L21
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L21
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUserSimple
ifne L22
L21:
iconst_m1
ireturn
L22:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 5
lconst_0
lstore 3
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifle L23
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 3
L23:
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
dup
aload 6
getstatic com/nd/android/backpacksystem/R$style/dlg_my_gift I
aconst_null
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/<init>(Landroid/app/Activity;ILcom/nd/android/backpacksystem/listener/DialogCallBack;)V
astore 2
aload 2
aload 5
lload 3
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/setData(Lcom/product/android/commonInterface/contact/OapUserSimple;J)V
aload 2
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/setCanceledOnTouchOutside(Z)V
aload 2
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/show()V
iconst_0
istore 1
goto L9
L7:
aload 2
ifnull L24
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L24
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/nd/android/backpacksystem/interfaces/InterfaceForDifference
ifne L25
L24:
iconst_m1
ireturn
L25:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/nd/android/backpacksystem/interfaces/InterfaceForDifference
astore 2
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 2
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/setDifferenceInterface(Lcom/nd/android/backpacksystem/interfaces/InterfaceForDifference;)V
iconst_0
istore 1
goto L9
.limit locals 7
.limit stack 5
.end method
