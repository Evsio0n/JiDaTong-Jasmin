.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/message_chat/ChatAppAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/ui/activity/message_chat/ChatAppAdapter$Holder outer com/nd/android/u/ui/activity/message_chat/ChatAppAdapter

.field private 'mAppList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IBottomFunction;>;"

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mAppList Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mAppList Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method public getAppList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IBottomFunction;>;"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mAppList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mAppList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mAppList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mAppList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mAppList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/ui/activity/message_chat/ChatAppAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/ChatAppAdapter$Holder/<init>(Lcom/nd/android/u/ui/activity/message_chat/ChatAppAdapter;)V
astore 2
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_app_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
getstatic com/nd/android/u/chat/R$id/chat_app_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter$Holder/image Landroid/widget/ImageView;
aload 2
aload 3
getstatic com/nd/android/u/chat/R$id/chat_app_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter$Holder/appname Landroid/widget/TextView;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/ui/activity/message_chat/ChatAppAdapter$Holder
astore 2
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mAppList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IBottomFunction
astore 4
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IBottomFunction/getAppResId()I 0
ifeq L1
aload 2
getfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter$Holder/image Landroid/widget/ImageView;
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IBottomFunction/getAppResId()I 0
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
aload 2
getfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter$Holder/appname Landroid/widget/TextView;
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IBottomFunction/getLabel()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public setIListGridItemList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IBottomFunction;>;)V"
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/mAppList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
