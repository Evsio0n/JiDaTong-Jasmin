.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IChatListLongClickMenu
.inner class inner com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1
.inner class inner com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$2

.field private 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl;Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/openUrl(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method private openUrl(Landroid/content/Context;Ljava/lang/String;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 1
ldc "com.product.android.ui.activity.WebViewActivity"
invokevirtual android/content/Intent/setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
ldc "com.android.browser.application_id"
aload 1
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 2
invokestatic com/common/android/utils/UrlUtils/completeUrl(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 3
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 3
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/context_menu_item_open_url I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_2
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_3
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_5
if_icmpne L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
invokestatic com/common/android/utils/UrlUtils/isHtml(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
astore 2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/getUrls(Ljava/lang/String;)Ljava/util/List;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
aload 1
aload 2
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/openUrl(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
new android/app/AlertDialog$Builder
dup
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 3
aload 3
aload 2
aload 2
invokeinterface java/util/List/size()I 0
anewarray java/lang/String
invokeinterface java/util/List/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
checkcast [Ljava/lang/CharSequence;
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1
dup
aload 0
aload 2
aload 1
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1/<init>(Lcom/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl;Ljava/util/List;Landroid/content/Context;)V
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
getstatic com/nd/android/u/chat/R$string/cancel I
new com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$2
dup
aload 0
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$2/<init>(Lcom/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl;)V
invokevirtual android/app/AlertDialog$Builder/setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 4
.limit stack 7
.end method
