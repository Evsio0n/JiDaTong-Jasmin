.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactBaseFragment$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/fragment/ContactBaseFragment/showPromptLayout()V
.inner class inner com/nd/android/u/contact/fragment/ContactBaseFragment$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactBaseFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactBaseFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment$4/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$4/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/manuRefreshUnitList()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$4/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/promptText Landroid/widget/TextView;
aconst_null
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
