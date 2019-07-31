.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class OnClickAvatarListener inner com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener outer com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener/this$0 Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
astore 1
aload 1
ifnull L0
aload 1
instanceof com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj
ifeq L0
aload 1
checkcast com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj
getfield com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj/isOnlySina Z
istore 2
aload 1
checkcast com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj
getfield com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj/uid J
lstore 3
iload 2
ifeq L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "http://m.weibo.cn/u/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener/this$0 Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokestatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/access$000(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;)Landroid/content/Context;
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
aload 5
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 5
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 5
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener/this$0 Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokestatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/access$000(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;)Landroid/content/Context;
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L0:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener/this$0 Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokestatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/access$000(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;)Landroid/content/Context;
lload 3
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 6
.limit stack 4
.end method
