.bytecode 50.0
.class public synchronized com/nd/schoollife/common/receiver/ChangeMainBottom
.super android/content/BroadcastReceiver

.field private 'mListener' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener;

.method public <init>()V
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener;)V
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/common/receiver/ChangeMainBottom/mListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener;
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
aload 0
getfield com/nd/schoollife/common/receiver/ChangeMainBottom/mListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener;
ifnull L0
aload 2
ldc "BOOL_MAIN_BOTTOM_CHANGE"
iconst_1
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
ifeq L1
aload 0
getfield com/nd/schoollife/common/receiver/ChangeMainBottom/mListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener;
invokeinterface com/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener/onShow()V 0
L0:
return
L1:
aload 0
getfield com/nd/schoollife/common/receiver/ChangeMainBottom/mListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener;
invokeinterface com/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener/onHide()V 0
return
.limit locals 3
.limit stack 3
.end method
