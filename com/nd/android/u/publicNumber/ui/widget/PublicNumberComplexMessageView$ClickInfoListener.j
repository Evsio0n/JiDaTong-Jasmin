.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private ClickInfoListener inner com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener outer com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView

.field private 'mInfo' Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;

.field private 'mKey' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;

.method public <init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/mInfo Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;
aload 0
aload 3
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/mKey Ljava/lang/String;
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/mInfo Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/href Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/mInfo Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/title Ljava/lang/String;
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
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/mInfo Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/thirdAppTag Ljava/lang/String;
astore 4
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
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/mKey Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;)Landroid/content/Context;
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView$ClickInfoListener/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView;)Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 5
.end method
