.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/Bind91Account$2
.super java/lang/Object
.implements com/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener
.enclosing method com/nd/android/u/cloud/activity/Bind91Account
.inner class inner com/nd/android/u/cloud/activity/Bind91Account$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/Bind91Account;

.method <init>(Lcom/nd/android/u/cloud/activity/Bind91Account;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/Bind91Account$2/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onGetCheckcodeFinish(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$2/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$100(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$2/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$200(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$2/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$300(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method
