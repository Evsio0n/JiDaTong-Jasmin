.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$1
.inner class inner com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$2

.field protected static final 'TAG' Ljava/lang/String; = "AddBlacklistDialog"

.field private 'context' Landroid/content/Context;

.field private 'handler' Landroid/os/Handler;

.method public <init>(Landroid/content/Context;Landroid/os/Handler;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
aload 1
getstatic com/nd/android/u/chat/R$string/addblacklist I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 1
getstatic com/nd/android/u/chat/R$string/alertblacklist I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/handler Landroid/os/Handler;
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/opBlacklist()V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method private opBlacklist()V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/cancel I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
new com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$1/<init>(Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/ok I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
new com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$2/<init>(Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
