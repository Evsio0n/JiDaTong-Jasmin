.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/MySeniorActivity$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/activity/senior/MySeniorActivity/onContactStateChange()V
.inner class inner com/nd/android/u/contact/activity/senior/MySeniorActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$200(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$200(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
