.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/MyProgressDialog
.super android/app/ProgressDialog

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/contact/dialog/MyProgressDialog/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
astore 1
aload 1
bipush 48
putfield android/view/WindowManager$LayoutParams/gravity I
aload 1
ldc_w 90.0F
putfield android/view/WindowManager$LayoutParams/dimAmount F
aload 0
invokevirtual com/nd/android/u/contact/dialog/MyProgressDialog/getWindow()Landroid/view/Window;
aload 1
invokevirtual android/view/Window/setAttributes(Landroid/view/WindowManager$LayoutParams;)V
return
.limit locals 2
.limit stack 2
.end method
