.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_config/ChatConfigActivity
.super com/product/android/ui/activity/HeaderActivity
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
.inner class inner com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1
.inner class inner com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2
.inner class private DelBlacklistTask inner com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask outer com/nd/android/u/ui/activity/chat_config/ChatConfigActivity
.inner class MyImgOnClickListener inner com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener outer com/nd/android/u/ui/activity/chat_config/ChatConfigActivity

.field private static final 'BLACKLIST_ADD' I = 1


.field private static final 'BLACKLIST_REMOVE' I = 2


.field private static final 'CLOUD_MESSAGE_URL' Ljava/lang/String;

.field private 'followDialog' Landroid/app/AlertDialog;

.field private 'imgAdd' Landroid/widget/ImageView;

.field private 'imgFriendFace' Landroid/widget/ImageView;

.field private 'mDelBlackListTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mFid' J

.field 'mHandler' Landroid/os/Handler;

.field private 'mName' Ljava/lang/String;

.field private 'mdelBlacklistTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mdialog' Landroid/app/ProgressDialog;

.field private 'msg' Ljava/lang/String;

.field private 'tvBlacklist' Landroid/widget/TextView;

.field private 'tvClear' Landroid/widget/TextView;

.field private 'tvCloud' Landroid/widget/TextView;

.field private 'tvFriend' Landroid/widget/TextView;

.field private 'tvHomePage' Landroid/widget/TextView;

.method static <clinit>()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imroam/chat?sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/CLOUD_MESSAGE_URL Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/msg Ljava/lang/String;
aload 0
new com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1/<init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$2/<init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mDelBlackListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mFid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Landroid/app/AlertDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/followDialog Landroid/app/AlertDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/followDialog Landroid/app/AlertDialog;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300()Ljava/lang/String;
getstatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/CLOUD_MESSAGE_URL Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;Ljava/lang/Class;Landroid/os/Bundle;)V
aload 0
aload 1
aload 2
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/toActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$600(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvBlacklist Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/onBegin()V
return
.limit locals 1
.limit stack 1
.end method

.method private getBlackList()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mFid J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/checkUidIsBlackList(J)Z 2
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvBlacklist Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/removeblacklist I
invokevirtual android/widget/TextView/setText(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvBlacklist Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/addblacklist I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 3
.end method

.method private onBegin()V
aload 0
aload 0
ldc ""
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/msg Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 1
.limit stack 5
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/chat/R$layout/chat_config I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/initData()V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/initEvent()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public delAddBlackList(I)V
iload 1
iconst_1
if_icmpne L0
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/wait_for_adding I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/msg Ljava/lang/String;
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
return
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/wait_for_remove_blacklist I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/msg Ljava/lang/String;
goto L1
L2:
aload 0
new com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask/<init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1;)V
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mDelBlackListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 2
ldc "type"
iload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method public handler_CMD_UserStatus()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/handler_CMD_UserStatus()V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvHomePage I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvHomePage Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvFriend I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvFriend Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvBlacklist I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvBlacklist Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvCloud I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvCloud Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvClear I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvClear Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/imgFriendFace I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/imgFriendFace Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/imgAdd I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/imgAdd Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getstatic com/nd/android/u/chat/R$string/talk_setting I
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/setActivityTitle(I)V
invokestatic java/lang/System/currentTimeMillis()J
lstore 1
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/switchUser()V
ldc "commoninterface"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "switchUser:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
lload 1
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
invokestatic java/lang/System/currentTimeMillis()J
lstore 1
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/getBlackList()V
ldc "commoninterface"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getBlackList:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
lload 1
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/imgFriendFace Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mFid J
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
return
.limit locals 3
.limit stack 6
.end method

.method protected initData()V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ldc "fid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
ldc "fid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mFid J
L0:
aload 0
aload 1
ldc "name"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mName Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mName Ljava/lang/String;
ifnonnull L1
aload 0
ldc ""
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mName Ljava/lang/String;
L1:
return
.limit locals 2
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
new com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/<init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
astore 1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvHomePage Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvFriend Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvBlacklist Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvClear Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvCloud Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/imgFriendFace Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/imgAdd Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/followDialog Landroid/app/AlertDialog;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/followDialog Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdialog Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mdelBlacklistTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L2:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method protected switchUser()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mFid J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/checkUidIsMyFolling(Landroid/content/Context;J)Z 3
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvFriend Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/unfollow I
invokevirtual android/widget/TextView/setText(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/tvFriend Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/following_ta I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 4
.end method
