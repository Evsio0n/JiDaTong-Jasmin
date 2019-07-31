.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/UpdateStatusTip
.super java/lang/Object

.field private 'mCtx' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/UpdateStatusTip/mCtx Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private getEventType()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
ldc com/nd/rj/common/incrementalupdates/UpdateStatus
areturn
.limit locals 1
.limit stack 1
.end method

.method public onEventMainThread(Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpdateStatusTip/mCtx Landroid/content/Context;
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/UpdateStatus/toString()Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method

.method public registerEvent(Lde/greenrobot/event/EventBus;)V
aload 1
aload 0
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatusTip/getEventType()Ljava/lang/Class;
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 4
.end method

.method public unRegisterEvent(Lde/greenrobot/event/EventBus;)V
aload 1
aload 0
iconst_1
anewarray java/lang/Class
dup
iconst_0
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatusTip/getEventType()Ljava/lang/Class;
aastore
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 6
.end method
