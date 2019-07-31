.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/showSubmitingDialog(Ljava/lang/String;Ljava/lang/String;)V
.inner class inner com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;

.method <init>(Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$1/this$0 Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$1/this$0 Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$1/this$0 Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;
invokestatic com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/access$000(Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;)Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
return
.limit locals 2
.limit stack 2
.end method
