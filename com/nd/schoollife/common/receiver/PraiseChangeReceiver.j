.bytecode 50.0
.class public synchronized com/nd/schoollife/common/receiver/PraiseChangeReceiver
.super android/content/BroadcastReceiver

.field private 'mListener' Lcom/nd/schoollife/ui/common/process/PraiseListener;

.method public <init>()V
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Lcom/nd/schoollife/ui/common/process/PraiseListener;)V
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/common/receiver/PraiseChangeReceiver/mListener Lcom/nd/schoollife/ui/common/process/PraiseListener;
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
aload 0
getfield com/nd/schoollife/common/receiver/PraiseChangeReceiver/mListener Lcom/nd/schoollife/ui/common/process/PraiseListener;
ifnull L0
aload 2
ldc "BOOL_PRAISE_IS_SUCCESS"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 4
aload 2
ldc "INT_POST_ID"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 5
aload 2
ldc "PRAISE_OR_CANCEL"
iconst_m1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 3
aload 2
ldc "PRAISE_TYPE"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE/valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;
astore 1
iload 3
ifne L1
aload 0
getfield com/nd/schoollife/common/receiver/PraiseChangeReceiver/mListener Lcom/nd/schoollife/ui/common/process/PraiseListener;
lload 5
iload 4
aload 1
invokeinterface com/nd/schoollife/ui/common/process/PraiseListener/onCancelPraise(JZLcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;)V 4
L0:
return
L1:
aload 0
getfield com/nd/schoollife/common/receiver/PraiseChangeReceiver/mListener Lcom/nd/schoollife/ui/common/process/PraiseListener;
lload 5
iload 4
aload 1
invokeinterface com/nd/schoollife/ui/common/process/PraiseListener/onPraise(JZLcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;)V 4
return
.limit locals 7
.limit stack 5
.end method
