.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/init(Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;Ljava/util/ArrayList;)V
.inner class inner com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout;

.field final synthetic 'val$rp' Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;

.method <init>(Lcom/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout;Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1/this$0 Lcom/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout;
aload 0
aload 2
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1/val$rp Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1/this$0 Lcom/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout;
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/mContext Landroid/content/Context;
ldc com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "lotRank"
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1/val$rp Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/getRank()I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1/this$0 Lcom/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout;
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method
