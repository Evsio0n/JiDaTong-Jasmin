.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/widget/DlgMyGift
.super android/app/Dialog
.inner class inner com/nd/android/backpacksystem/widget/DlgMyGift$1

.field private 'mActivity' Landroid/app/Activity;

.field private 'mBtnSendGift' Landroid/widget/Button;

.field private 'mBtnUseGift' Landroid/widget/Button;

.field private 'mDialogCallBack' Lcom/nd/android/backpacksystem/listener/DialogCallBack;

.field private 'mItemProperty' Lcom/nd/android/backpacksystem/data/BaseItemProperty;

.field private 'mItemType' Lcom/nd/android/backpacksystem/data/ItemType;

.field private 'mMyGiftInfo' Lcom/nd/android/backpacksystem/data/MyItems;

.field private 'onClick' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/app/Activity;ILcom/nd/android/backpacksystem/listener/DialogCallBack;)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
new com/nd/android/backpacksystem/widget/DlgMyGift$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift$1/<init>(Lcom/nd/android/backpacksystem/widget/DlgMyGift;)V
putfield com/nd/android/backpacksystem/widget/DlgMyGift/onClick Landroid/view/View$OnClickListener;
aload 0
getstatic com/nd/android/backpacksystem/R$layout/dlg_my_gift I
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/setContentView(I)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgMyGift/mActivity Landroid/app/Activity;
aload 0
aload 3
putfield com/nd/android/backpacksystem/widget/DlgMyGift/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/initView()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/initEvent()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/backpacksystem/widget/DlgMyGift;)Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/widget/DlgMyGift;)Lcom/nd/android/backpacksystem/data/MyItems;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/backpacksystem/widget/DlgMyGift;)Lcom/nd/android/backpacksystem/data/ItemProcess;
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/getItemProcess()Lcom/nd/android/backpacksystem/data/ItemProcess;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getItemProcess()Lcom/nd/android/backpacksystem/data/ItemProcess;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemProperty Lcom/nd/android/backpacksystem/data/BaseItemProperty;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getItemTypeId()J
invokestatic com/nd/android/backpacksystem/data/ItemType/valueToType(J)Lcom/nd/android/backpacksystem/data/ItemType;
astore 1
aload 1
getstatic com/nd/android/backpacksystem/data/ItemType/FLOWERS Lcom/nd/android/backpacksystem/data/ItemType;
if_acmpne L0
new com/nd/android/backpacksystem/data/FlowersProcess
dup
invokespecial com/nd/android/backpacksystem/data/FlowersProcess/<init>()V
areturn
L0:
aload 1
getstatic com/nd/android/backpacksystem/data/ItemType/GIFTS Lcom/nd/android/backpacksystem/data/ItemType;
if_acmpne L1
new com/nd/android/backpacksystem/data/GiftsProcess
dup
invokespecial com/nd/android/backpacksystem/data/GiftsProcess/<init>()V
areturn
L1:
aload 1
getstatic com/nd/android/backpacksystem/data/ItemType/RAFFLE_TICKETS Lcom/nd/android/backpacksystem/data/ItemType;
if_acmpne L2
new com/nd/android/backpacksystem/data/RaffleTicketsProcess
dup
invokespecial com/nd/android/backpacksystem/data/RaffleTicketsProcess/<init>()V
areturn
L2:
aload 1
getstatic com/nd/android/backpacksystem/data/ItemType/HY_STOCK Lcom/nd/android/backpacksystem/data/ItemType;
if_acmpne L3
new com/nd/android/backpacksystem/data/StocksProcess
dup
invokespecial com/nd/android/backpacksystem/data/StocksProcess/<init>()V
areturn
L3:
new com/nd/android/backpacksystem/data/EmptyProcess
dup
invokespecial com/nd/android/backpacksystem/data/EmptyProcess/<init>()V
areturn
.limit locals 2
.limit stack 2
.end method

.method private initData()V
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivGiftImage I
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 2
aload 2
getstatic com/nd/android/backpacksystem/R$drawable/icon_gift_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemProperty Lcom/nd/android/backpacksystem/data/BaseItemProperty;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getIconUrl()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemProperty Lcom/nd/android/backpacksystem/data/BaseItemProperty;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getIconUrl()Ljava/lang/String;
aload 2
invokestatic com/nd/android/backpacksystem/helper/DisplayUtil/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
L0:
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvGiftName I
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemProperty Lcom/nd/android/backpacksystem/data/BaseItemProperty;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getName()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getstatic com/nd/android/backpacksystem/R$id/tv_gift_src I
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
ifnull L3
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getSourceStr()Ljava/lang/String;
ifnull L3
aload 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getSourceStr()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvGiftTotal I
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
ifeq L4
aload 2
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L5:
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvGiftContent I
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemProperty Lcom/nd/android/backpacksystem/data/BaseItemProperty;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getBrief()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
aload 2
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L7:
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/isStocksType()Z
istore 1
iload 1
ifeq L8
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnUseGift Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L9:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnSendGift Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemTypeId()I
i2l
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
astore 2
aload 2
ifnull L10
aload 2
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getExclusiveFlag()Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
getstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/CAN_NOT_GIVE Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
if_acmpne L10
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/isInWhiteList()Z
ifne L10
iload 1
ifeq L11
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnSendGift Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L10:
return
L1:
aload 2
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L4:
aload 2
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
goto L5
L6:
aload 2
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
goto L7
L8:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnUseGift Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/isDoUse()Z
ifeq L12
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnUseGift Landroid/widget/Button;
getstatic com/nd/android/backpacksystem/R$string/use I
invokevirtual android/widget/Button/setText(I)V
goto L9
L12:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnUseGift Landroid/widget/Button;
getstatic com/nd/android/backpacksystem/R$string/open I
invokevirtual android/widget/Button/setText(I)V
goto L9
L11:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnSendGift Landroid/widget/Button;
iconst_4
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 4
.limit stack 3
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnUseGift Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/onClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnSendGift Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/onClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initView()V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/btnUseGift I
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnUseGift Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/btnSendGift I
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/backpacksystem/widget/DlgMyGift/mBtnSendGift Landroid/widget/Button;
return
.limit locals 1
.limit stack 3
.end method

.method private isDoUse()Z
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/isFlowersType()Z
ifne L0
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/isRaffleTickets()Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private isFlowersType()Z
getstatic com/nd/android/backpacksystem/data/ItemType/FLOWERS Lcom/nd/android/backpacksystem/data/ItemType;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemType Lcom/nd/android/backpacksystem/data/ItemType;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private isRaffleTickets()Z
getstatic com/nd/android/backpacksystem/data/ItemType/RAFFLE_TICKETS Lcom/nd/android/backpacksystem/data/ItemType;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemType Lcom/nd/android/backpacksystem/data/ItemType;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private isStocksType()Z
getstatic com/nd/android/backpacksystem/data/ItemType/HY_STOCK Lcom/nd/android/backpacksystem/data/ItemType;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemType Lcom/nd/android/backpacksystem/data/ItemType;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public doUseGift()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/isDoUse()Z
ifeq L0
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/isFlowersType()Z
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/toFlowerTaskActivity(Landroid/content/Context;Lcom/nd/android/backpacksystem/data/MyItems;)V
L1:
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/isRaffleTickets()Z
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/toLotMainActivity(Landroid/app/Activity;Lcom/nd/android/backpacksystem/data/MyItems;)V
L2:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/cancel()V
return
L0:
new com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemId()J
putfield com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/mItemId J
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
i2l
putfield com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/mAmount J
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/getItemProcess()Lcom/nd/android/backpacksystem/data/ItemProcess;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mActivity Landroid/app/Activity;
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
invokeinterface com/nd/android/backpacksystem/data/ItemProcess/doUse(Landroid/app/Activity;Ljava/lang/Object;Lcom/nd/android/backpacksystem/listener/DialogCallBack;)V 3
return
.limit locals 2
.limit stack 4
.end method

.method public setData(Lcom/nd/android/backpacksystem/data/MyItems;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
aload 0
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemTypeId()I
i2l
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
putfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemProperty Lcom/nd/android/backpacksystem/data/BaseItemProperty;
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemProperty Lcom/nd/android/backpacksystem/data/BaseItemProperty;
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getItemTypeId()J
invokestatic com/nd/android/backpacksystem/data/ItemType/valueToType(J)Lcom/nd/android/backpacksystem/data/ItemType;
putfield com/nd/android/backpacksystem/widget/DlgMyGift/mItemType Lcom/nd/android/backpacksystem/data/ItemType;
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgMyGift/initData()V
return
.limit locals 2
.limit stack 4
.end method
