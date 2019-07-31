.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/TestingInfoActivity
.super android/app/Activity
.inner class inner com/nd/android/u/cloud/activity/TestingInfoActivity$1
.inner class inner com/nd/android/u/cloud/activity/TestingInfoActivity$2
.inner class inner com/nd/android/u/cloud/activity/TestingInfoActivity$3

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903765
invokevirtual com/nd/android/u/cloud/activity/TestingInfoActivity/setContentView(I)V
aload 0
ldc_w 2131626927
invokevirtual com/nd/android/u/cloud/activity/TestingInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokevirtual android/widget/TextView/getPaint()Landroid/text/TextPaint;
iconst_1
invokevirtual android/text/TextPaint/setFakeBoldText(Z)V
aload 0
ldc_w 2131626926
invokevirtual com/nd/android/u/cloud/activity/TestingInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokevirtual android/widget/TextView/getPaint()Landroid/text/TextPaint;
iconst_1
invokevirtual android/text/TextPaint/setFakeBoldText(Z)V
aload 0
ldc_w 2131624550
invokevirtual com/nd/android/u/cloud/activity/TestingInfoActivity/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/TestingInfoActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/TestingInfoActivity$1/<init>(Lcom/nd/android/u/cloud/activity/TestingInfoActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131626928
invokevirtual com/nd/android/u/cloud/activity/TestingInfoActivity/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/TestingInfoActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/TestingInfoActivity$2/<init>(Lcom/nd/android/u/cloud/activity/TestingInfoActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131626930
invokevirtual com/nd/android/u/cloud/activity/TestingInfoActivity/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/TestingInfoActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/TestingInfoActivity$3/<init>(Lcom/nd/android/u/cloud/activity/TestingInfoActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 4
.end method
