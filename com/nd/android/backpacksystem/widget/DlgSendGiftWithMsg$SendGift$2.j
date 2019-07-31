.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/requestFaildialog(Ljava/lang/String;)V
.inner class private static SendGift inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift outer com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$2

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift;

.method <init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$2/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$2/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/access$4500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift;)Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/doSend()V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 1
.end method
