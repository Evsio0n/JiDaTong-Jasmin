.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_App$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_App/getView()V
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_App$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_App;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_App$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_App;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_App;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_App/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Landroid/content/Context;
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_App;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_App/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
getfield com/nd/android/u/bean4xy/DisplayMessage_App/url Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_App;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_App/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method
