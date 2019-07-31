.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/activity/BaseActivity
.super android/app/Activity

.field protected 'mCtx' Landroid/content/Context;

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
aload 0
putfield com/nd/schoollife/ui/common/activity/BaseActivity/mCtx Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method
