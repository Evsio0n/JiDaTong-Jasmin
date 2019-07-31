.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/TestingInfoActivity$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/TestingInfoActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/nd/android/u/cloud/activity/TestingInfoActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/TestingInfoActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/TestingInfoActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/TestingInfoActivity$3/this$0 Lcom/nd/android/u/cloud/activity/TestingInfoActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/TestingInfoActivity$3/this$0 Lcom/nd/android/u/cloud/activity/TestingInfoActivity;
ldc_w 2131626930
invokevirtual com/nd/android/u/cloud/activity/TestingInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 1
aload 1
ifnull L0
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
return
L1:
new android/content/Intent
dup
ldc "android.intent.action.DIAL"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tel:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/TestingInfoActivity$3/this$0 Lcom/nd/android/u/cloud/activity/TestingInfoActivity;
aload 1
invokevirtual com/nd/android/u/cloud/activity/TestingInfoActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method
