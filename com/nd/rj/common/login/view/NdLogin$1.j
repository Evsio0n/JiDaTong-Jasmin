.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdLogin$1
.super java/lang/Object
.implements com/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener
.enclosing method com/nd/rj/common/login/view/NdLogin
.inner class inner com/nd/rj/common/login/view/NdLogin$1

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdLogin;

.method <init>(Lcom/nd/rj/common/login/view/NdLogin;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdLogin$1/this$0 Lcom/nd/rj/common/login/view/NdLogin;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onGetCheckcodeFinish(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin$1/this$0 Lcom/nd/rj/common/login/view/NdLogin;
invokestatic com/nd/rj/common/login/view/NdLogin/access$000(Lcom/nd/rj/common/login/view/NdLogin;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin$1/this$0 Lcom/nd/rj/common/login/view/NdLogin;
invokestatic com/nd/rj/common/login/view/NdLogin/access$100(Lcom/nd/rj/common/login/view/NdLogin;)Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/rj/common/login/view/NdLogin$1/this$0 Lcom/nd/rj/common/login/view/NdLogin;
invokestatic com/nd/rj/common/login/view/NdLogin/access$200(Lcom/nd/rj/common/login/view/NdLogin;)Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
