.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/dialog/SureDlgTip$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/ui/dialog/SureDlgTip/<init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
.inner class inner com/nd/android/u/cloud/ui/dialog/SureDlgTip$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/dialog/SureDlgTip;

.method <init>(Lcom/nd/android/u/cloud/ui/dialog/SureDlgTip;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/SureDlgTip$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/SureDlgTip;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/ui/dialog/SureDlgTip$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/SureDlgTip;
invokevirtual com/nd/android/u/cloud/ui/dialog/SureDlgTip/cancel()V
aload 0
getfield com/nd/android/u/cloud/ui/dialog/SureDlgTip$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/SureDlgTip;
invokestatic com/nd/android/u/cloud/ui/dialog/SureDlgTip/access$000(Lcom/nd/android/u/cloud/ui/dialog/SureDlgTip;)Landroid/content/DialogInterface$OnClickListener;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/SureDlgTip$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/SureDlgTip;
invokestatic com/nd/android/u/cloud/ui/dialog/SureDlgTip/access$000(Lcom/nd/android/u/cloud/ui/dialog/SureDlgTip;)Landroid/content/DialogInterface$OnClickListener;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/SureDlgTip$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/SureDlgTip;
iconst_m1
invokeinterface android/content/DialogInterface$OnClickListener/onClick(Landroid/content/DialogInterface;I)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method
