.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private ClickInfoListener inner com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener outer com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView

.field private 'mKey' Ljava/lang/String;

.field private 'mMultimediaInfo' Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;

.method public <init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
aload 0
aload 3
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener/mKey Ljava/lang/String;
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
invokevirtual com/nd/android/u/publicNumber/ui/bean/MultimediaInfo/getmHref()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
invokevirtual com/nd/android/u/publicNumber/ui/bean/MultimediaInfo/getmTitle()Ljava/lang/String;
astore 2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/appendSidUidToUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 3
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
aload 2
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_PSPID Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener/mKey Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/access$100(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;)Landroid/content/Context;
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/access$100(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;)Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 5
.end method
