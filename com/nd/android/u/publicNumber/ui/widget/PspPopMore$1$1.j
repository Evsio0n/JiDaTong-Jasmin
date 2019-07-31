.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/widget/PspPopMore$1$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/publicNumber/ui/widget/PspPopMore$1/onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspPopMore$1
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspPopMore$1$1

.field final synthetic 'this$1' Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore$1;

.method <init>(Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore$1;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspPopMore$1$1/this$1 Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore$1;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore$1$1/this$1 Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore$1;
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspPopMore/access$100(Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;)Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/deletePublicNumberContact(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore$1$1/this$1 Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore$1;
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspPopMore/access$100(Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;)Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/deletePublicNumebrMessage(Ljava/lang/String;)V
new com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore$1$1/this$1 Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore$1;
getfield com/nd/android/u/publicNumber/ui/widget/PspPopMore$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspPopMore/access$100(Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;)Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/<init>(Ljava/lang/String;)V
astore 3
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 3
bipush 11
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 4
.limit stack 3
.end method
