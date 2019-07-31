.bytecode 50.0
.class synchronized com/nd/android/u/commonWidget/NotificationMsg$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/commonWidget/NotificationMsg/showNotify(Landroid/app/Notification;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Ljava/lang/Boolean;Landroid/os/Bundle;)V
.inner class inner com/nd/android/u/commonWidget/NotificationMsg$1

.field final synthetic 'this$0' Lcom/nd/android/u/commonWidget/NotificationMsg;

.field private final synthetic 'val$bundle' Landroid/os/Bundle;

.field private final synthetic 'val$isEnablePopup' Ljava/lang/Boolean;

.field private final synthetic 'val$msg' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private final synthetic 'val$notification' Landroid/app/Notification;

.method <init>(Lcom/nd/android/u/commonWidget/NotificationMsg;Landroid/app/Notification;Ljava/lang/Boolean;Landroid/os/Bundle;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
putfield com/nd/android/u/commonWidget/NotificationMsg$1/this$0 Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 0
aload 2
putfield com/nd/android/u/commonWidget/NotificationMsg$1/val$notification Landroid/app/Notification;
aload 0
aload 3
putfield com/nd/android/u/commonWidget/NotificationMsg$1/val$isEnablePopup Ljava/lang/Boolean;
aload 0
aload 4
putfield com/nd/android/u/commonWidget/NotificationMsg$1/val$bundle Landroid/os/Bundle;
aload 0
aload 5
putfield com/nd/android/u/commonWidget/NotificationMsg$1/val$msg Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 6
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/val$notification Landroid/app/Notification;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/this$0 Lcom/nd/android/u/commonWidget/NotificationMsg;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/cancelNotify()V
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
getfield com/nd/android/u/controller/ChatConfiguration/popMessageActivity Ljava/lang/Class;
ifnull L1
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/val$isEnablePopup Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L1
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/val$bundle Landroid/os/Bundle;
ifnull L1
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/this$0 Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/val$msg Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/val$bundle Landroid/os/Bundle;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/popupWindow(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Landroid/os/Bundle;)V
L1:
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/this$0 Lcom/nd/android/u/commonWidget/NotificationMsg;
invokestatic com/nd/android/u/commonWidget/NotificationMsg/access$0(Lcom/nd/android/u/commonWidget/NotificationMsg;)Landroid/app/NotificationManager;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/APP_NAME I
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/val$notification Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/this$0 Lcom/nd/android/u/commonWidget/NotificationMsg;
invokestatic com/nd/android/u/commonWidget/NotificationMsg/access$1(Lcom/nd/android/u/commonWidget/NotificationMsg;)V
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/this$0 Lcom/nd/android/u/commonWidget/NotificationMsg;
invokestatic com/nd/android/u/commonWidget/NotificationMsg/access$2(Lcom/nd/android/u/commonWidget/NotificationMsg;)Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg$1/this$0 Lcom/nd/android/u/commonWidget/NotificationMsg;
aconst_null
invokestatic com/nd/android/u/commonWidget/NotificationMsg/access$3(Lcom/nd/android/u/commonWidget/NotificationMsg;Ljava/util/concurrent/ScheduledFuture;)V
return
.limit locals 1
.limit stack 3
.end method
