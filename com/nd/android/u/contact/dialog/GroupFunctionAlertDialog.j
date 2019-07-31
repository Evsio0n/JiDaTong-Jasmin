.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/GroupFunctionAlertDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1
.inner class inner com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$2

.field private 'gfAdapter' Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;

.field private 'group' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field private 'handler' Landroid/os/Handler;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/GroupFruction;>;"

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;Landroid/os/Handler;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
aload 3
putfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/handler Landroid/os/Handler;
aload 0
aload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getName()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/initView()V
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFunList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/GroupFruction;>;"
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
ifne L0
iconst_1
istore 1
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getFixGroupSetType(Ljava/lang/String;)I
ifeq L2
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_3
if_icmpne L3
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/shield_disscussion_msg I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_3
if_icmpne L5
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/review_discussion_info I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/open_conversation I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
ifeq L7
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/dissolution_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/transfer_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L8:
aload 2
areturn
L0:
iconst_0
istore 1
goto L1
L3:
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/shield_group_msg I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L4
L2:
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_3
if_icmpne L9
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/receive_disscussion_msg I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L4
L9:
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/enable_group_msg I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L4
L5:
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/review_group_info I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L6
L7:
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
ifne L8
aload 2
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/exit_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public initView()V
aload 0
new com/nd/android/u/contact/adapter/GroupFunctionAdapter
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/getFunList()Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/handler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/adapter/GroupFunctionAdapter/<init>(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;Landroid/os/Handler;)V
putfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/gfAdapter Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/gfAdapter Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
new com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/<init>(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)V
invokevirtual com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getstatic com/nd/android/u/contact/R$string/cancel I
new com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$2
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$2/<init>(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)V
invokevirtual com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 7
.end method

.method public receiveGroupMsg()V
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getFixGroupSetType(Ljava/lang/String;)I
ifne L0
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerMASK2ReceiveLogRecGroup(Ljava/lang/String;I)V
iconst_2
istore 1
L1:
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
iload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setPermission(Ljava/lang/String;I)Z
pop
return
L0:
iconst_0
istore 1
goto L1
.limit locals 2
.limit stack 3
.end method
