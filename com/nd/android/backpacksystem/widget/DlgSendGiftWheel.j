.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWheel
.super android/app/Dialog
.implements android/view/View$OnClickListener

.field private 'mSendGiftWheelView' Lcom/nd/android/backpacksystem/view/SendGiftWheelView;

.method public <init>(Landroid/app/Activity;I)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
getstatic com/nd/android/backpacksystem/R$layout/dlg_send_gift_wheel I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWheel/setContentView(I)V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/llSendGiftWheelView I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWheel/findViewById(I)Landroid/view/View;
checkcast com/nd/android/backpacksystem/view/SendGiftWheelView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWheel/mSendGiftWheelView Lcom/nd/android/backpacksystem/view/SendGiftWheelView;
return
.limit locals 3
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
return
.limit locals 2
.limit stack 0
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/backpacksystem/struct/MyGiftInfo;>;)V"
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWheel/mSendGiftWheelView Lcom/nd/android/backpacksystem/view/SendGiftWheelView;
aload 1
invokevirtual com/nd/android/backpacksystem/view/SendGiftWheelView/setData(Ljava/util/ArrayList;)V
return
.limit locals 2
.limit stack 2
.end method
