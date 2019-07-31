.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private GoToPraiseListViewOnClickListener inner com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener outer com/nd/schoollife/ui/post/view/PraisePanel

.field private 'pib' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/PraisePanel;

.method public <init>(Lcom/nd/schoollife/ui/post/view/PraisePanel;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/this$0 Lcom/nd/schoollife/ui/post/view/PraisePanel;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
aload 2
putfield com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnull L0
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/this$0 Lcom/nd/schoollife/ui/post/view/PraisePanel;
invokestatic com/nd/schoollife/ui/post/view/PraisePanel/access$100(Lcom/nd/schoollife/ui/post/view/PraisePanel;)Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/PraiseListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/this$0 Lcom/nd/schoollife/ui/post/view/PraisePanel;
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/getTag()Ljava/lang/Object;
ifnull L1
aload 2
ldc "OBJ_POSTINFOBEAN"
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/pib Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
L1:
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/this$0 Lcom/nd/schoollife/ui/post/view/PraisePanel;
invokestatic com/nd/schoollife/ui/post/view/PraisePanel/access$100(Lcom/nd/schoollife/ui/post/view/PraisePanel;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 3
.limit stack 4
.end method
