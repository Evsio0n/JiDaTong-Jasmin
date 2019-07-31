.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/HiddenLoveRuleActivity
.super android/app/Activity
.inner class inner com/nd/android/u/contact/activity/HiddenLoveRuleActivity$1

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_hidden_love_rule I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveRuleActivity/setContentView(I)V
L1:
aload 0
getstatic com/nd/android/u/contact/R$id/ivBack I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveRuleActivity/findViewById(I)Landroid/view/View;
new com/nd/android/u/contact/activity/HiddenLoveRuleActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/HiddenLoveRuleActivity$1/<init>(Lcom/nd/android/u/contact/activity/HiddenLoveRuleActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/hidden_love_rule I
invokevirtual com/nd/android/u/contact/activity/HiddenLoveRuleActivity/setContentView(I)V
goto L1
.limit locals 2
.limit stack 4
.end method
