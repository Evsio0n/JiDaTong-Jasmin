.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_Video
.super android/widget/TextView
.implements com/nd/android/u/controller/innerInterface/IChatListItem

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Video/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Video/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Video/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Video/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_item_text I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Video/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Video/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getstatic com/nd/android/u/chat/R$drawable/chat_selector_movie I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Video/setBackgroundResource(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
tableswitch -1
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Video/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/doDownload()Z 0
pop
return
.limit locals 2
.limit stack 2
.end method
